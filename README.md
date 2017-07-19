# Persian

## Installation

Add the following to your mix.exs file
```elixir
def deps do
  [{:persian, "~> 0.1.3"}]
end
```



## Usage

```elixir
word = "مرسي ؤ مٍمنون"
word |> Persian.fix
"مرسی و ممنون"
```
