# elixir_tutorial

Here’s a **concise but powerful Elixir cheatsheet** you can paste into your README. It highlights syntax, basics, and some expressive features so newcomers get a quick but solid overview:

---
# first chapter:
- setup
- comprehensions
- lists and tuples
---

# Elixir Cheatsheet

## Basics

```elixir
# Single line comment
x = 10          # immutable variable
IO.puts(x)      # print

# Atoms
:ok
:error
```

## Data Types

```elixir
# Numbers
1 + 2           # 3
5 / 2           # 2.5 (float division)
div(5, 2)       # 2
rem(5, 2)       # 1

# Strings
"Hello" <> " World"   # concatenation

# Lists
list = [1, 2, 3]
[0 | list]            # prepend

# Tuples
{:ok, "result"}
```

## Pattern Matching

```elixir
{a, b} = {1, 2}      # a=1, b=2
[x, y | rest] = [1,2,3,4]   # x=1, y=2, rest=[3,4]

case {:ok, 200} do
  {:ok, code} -> IO.puts("Success: #{code}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end
```

## Functions

```elixir
# Named function
defmodule Math do
  def square(x), do: x * x
end

Math.square(4)   # 16

# Anonymous function
add = fn a, b -> a + b end
add.(2, 3)       # 5
```

## Control Flow

```elixir
if true, do: "yes", else: "no"

cond do
  2 + 2 == 5 -> "wrong"
  2 + 2 == 4 -> "correct"
end

with {:ok, val} <- {:ok, 10},
     true <- val > 5 do
  IO.puts("Matched!")
end
```

## Pipelines

```elixir
"hello"
|> String.upcase()
|> String.reverse()
```

## Enum & Collections

```elixir
Enum.map([1,2,3], fn x -> x * 2 end)  # [2,4,6]
Enum.filter(1..10, &(&1 > 5))         # [6,7,8,9,10]
```

## Modules & Structs

```elixir
defmodule User do
  defstruct [:name, :age]
end

u = %User{name: "Niklas", age: 27}
u.name   # "Niklas"
```

## Processes & Messages

```elixir
pid = spawn(fn ->
  receive do
    {:hello, msg} -> IO.puts("Hello #{msg}")
  end
end)

send(pid, {:hello, "world"})
```

## Mix (Build Tool)

```bash
mix new my_app    # create project
mix compile       # compile
mix run           # run
iex -S mix        # interactive shell with project
```

---

Would you like me to **make it super compact (one-liners, fewer examples)** so it fits nicely in a repo README, or keep it **slightly expanded** (with short explanations like above) so it doubles as a quick-start tutorial?

