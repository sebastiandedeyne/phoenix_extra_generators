Code.require_file "../../mix_helper.exs", __DIR__

defmodule PhoenixExtraGeneratorsWeb.DupController do
end

defmodule Mix.Tasks.Phx.Gen.ControllerTest do
  use ExUnit.Case
  import MixHelper
  alias Mix.Tasks.Phx.Gen

  setup do
    Mix.Task.clear()
    :ok
  end

  @tag :current
  test "generates controller" do
    in_tmp_project "generates controller", fn ->
      Gen.Controller.run ["Posts"]

      assert_file "lib/phoenix_extra_generators_web/controllers/posts_controller.ex", fn file ->
        assert file =~ ~S|defmodule PhoenixExtraGeneratorsWeb.PostsController do|
        assert file =~ ~S|use PhoenixExtraGeneratorsWeb, :controller|
      end

      assert_file "test/phoenix_extra_generators_web/controllers/posts_controller_test.exs", fn file ->
        assert file =~ ~S|defmodule PhoenixExtraGeneratorsWeb.PostsControllerTest|
        assert file =~ ~S|use PhoenixExtraGeneratorsWeb.ConnCase|
        assert file =~ ~S|alias PhoenixExtraGeneratorsWeb.PostsController|
      end
    end
  end

  test "in an umbrella with a context_app, generates the files" do
    in_tmp_umbrella_project "generates controllers", fn ->
      Application.put_env(:phoenix, :generators, context_app: {:another_app, "another_app"})
      Gen.Controller.run ["posts"]
      assert_file "lib/phoenix_extra_generators_web/controllers/posts_controller.ex", fn file ->
        assert file =~ ~S|defmodule PhoenixExtraGeneratorsWeb.PostsController do|
        assert file =~ ~S|use PhoenixExtraGeneratorsWeb, :controller|
      end

      assert_file "test/phoenix_extra_generators_web/controllers/posts_controller_test.exs", fn file ->
        assert file =~ ~S|defmodule PhoenixExtraGeneratorsWeb.PostsControllerTest|
        assert file =~ ~S|use PhoenixExtraGeneratorsWeb.ConnCase|
        assert file =~ ~S|alias PhoenixExtraGeneratorsWeb.PostsController|
      end
    end
  end

  test "generates nested controller" do
    in_tmp_project "generates nested controller", fn ->
      Gen.Controller.run ["Admin.Posts"]

      assert_file "lib/phoenix_extra_generators_web/controllers/admin/posts_controller.ex", fn file ->
        assert file =~ ~S|defmodule PhoenixExtraGeneratorsWeb.Admin.PostsController do|
        assert file =~ ~S|use PhoenixExtraGeneratorsWeb, :controller|
      end

      assert_file "test/phoenix_extra_generators_web/controllers/admin/posts_controller_test.exs", fn file ->
        assert file =~ ~S|defmodule PhoenixExtraGeneratorsWeb.Admin.PostsControllerTest|
        assert file =~ ~S|use PhoenixExtraGeneratorsWeb.ConnCase|
        assert file =~ ~S|alias PhoenixExtraGeneratorsWeb.Admin.PostsController|
      end
    end
  end

  test "passing no args raises error" do
    assert_raise Mix.Error, fn ->
      Gen.Controller.run []
    end
  end

  test "passing extra args raises error" do
    assert_raise Mix.Error, fn ->
      Gen.Controller.run ["Admin.Posts", "new_message"]
    end
  end

  test "name is already defined" do
    assert_raise Mix.Error, ~r/DupController is already taken/, fn ->
      Gen.Controller.run ["Dup"]
    end
  end
end
