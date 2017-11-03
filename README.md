# PhoenixExtraGenerators

Provides extra generator commands for [Phoenix](http://phoenixframework.org/).

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

- [Sebastian De Deyne](https://github.com/sebastiandedeyne)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please check the [LICENSE](https://github.com/sebastiandedeyne/phoenix_extra_generators/blob/master/LICENSE.md) for more information.
