# PhoenixExtraGenerators

[![Hex.pm](https://img.shields.io/hexpm/v/phoenix_extra_generators.svg)](https://hex.pm/packages/phoenix_extra_generators)
[![Hex.pm](https://img.shields.io/hexpm/dt/phoenix_extra_generators.svg)](https://hex.pm/packages/phoenix_extra_generators)
[![Travis](https://img.shields.io/travis/sebastiandedeyne/phoenix_extra_generators.svg)](https://travis-ci.org/sebastiandedeyne/phoenix_extra_generators)

Provides extra generator commands for [Phoenix](http://phoenixframework.org/).

Two new commands will be available in your Phoenix app:

```
mix phx.gen.controller   # Generates a Phoenix controller
mix phx.gen.view         # Generates a Phoenix view
```

## Installation

Add `phoenix_extra_generators` to your list of dependencies in `mix.exs`. You'll probably only want to include it in dev:

```elixir
def deps do
  [
    {:phoenix_extra_generators, "~> 1.0.0", only: :dev}
  ]
end
```

## Usage

Once the package is installed, the additional mix commands are ready for use.

For additional documentation on the commands, use `mix help <command>` or browse the docs on [HexDocs](https://hexdocs.pm/phoenix_extra_generators).

## Changelog

Please see [CHANGELOG](https://github.com/sebastiandedeyne/phoenix_extra_generators/blob/master/CHANGELOG.md) for more information what has changed recently.

## Testing

```bash
$ mix test
```

## Contributing

Pull requests are welcome!

## Credits

The generators are based on the code distributed in the [Phoenix framework](https://github.com/phoenixframework/phoenix).

- [Sebastian De Deyne](https://github.com/sebastiandedeyne)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please check the [LICENSE](https://github.com/sebastiandedeyne/phoenix_extra_generators/blob/master/LICENSE.md) for more information.
