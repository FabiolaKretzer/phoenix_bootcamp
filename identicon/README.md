# Identicon

An Identicon is a visual representation of a hash value, usually of an IP address, that serves to identify a user of a computer system as a form of avatar while protecting the user's privacy.

The identicon will take a string as input and will generate an image:

<p align="center">
  <img alt="input_output" title="#input_output" src="./images/input_output.png" width="700px">
</p>

Some examples:

<p align="center">
  <img alt="examples" title="#examples" src="./images/examples.png" width="700px">
</p>

Image is 250px by 250px, with 5X5 grid of squares, each 50px tall and wide:

<p align="center">
  <img alt="length_grid" title="#length_grid" src="./images/length_grid.png" width="700px">
</p>

Steps for generate an image:

<p align="center">
  <img alt="steps" title="#steps" src="./images/steps.png" width="700px">
</p>

Distribution of values of array at image pixels:

<p align="center">
  <img alt="distribuition_of_values" title="#distribuition_of_values" src="./images/distribuition_of_values.png" width="700px">
</p>

Calculate to paint pixels:

<p align="center">
  <img alt="pixel_calculations" title="#pixel_calculations" src="./images/pixel_calculations.png" width="700px">
</p>

Generate the image:

<p align="center">
  <img alt="edg_create" title="#edg_create" src="./images/edg_create.png" width="700px">
</p>

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `identicon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:identicon, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/identicon](https://hexdocs.pm/identicon).

