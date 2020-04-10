# Zero To Hero In Elixir

- Hello World | Zero to Hero in Elixir #1

https://elixir-lang.org/install.html


```
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb

sudo apt-get update

sudo apt-get install esl-erlang

sudo apt-get install elixir

iex

IO.puts "Hello World!"
```

- IEx and Basic Types | Zero to Hero in Elixir #2

- Reading a File, Atoms and Tuples | Zero to Hero in Elixir #3

```
:ok

:whatever_I_want

:error

```

- Modules & Functions | Zero to Hero in Elixir #4

```
defmodule Alch do
    def hello(stuff) do
        stuff
    end
    def read_my_file(filename) do
        File.read(filename)
    end
end

c("alch.ex")

Alch.hello("Hello World!)

Alch.read_my_file("my_file")

```

- Understanding Maps | Zero to Hero in Elixir #5

```
my_app = %{"key" => "value"}

my_other_app = %{:my_key => "some stuff"}

map = %{:key => 23, "key_2" => "something"}

nexted_maps = %{:key => %{:key_inside => "order stuff"}, :a => 2}

nexted_maps[:key][:key_inside]

```

- Understanding Pattern Matching | Zero to Hero in Elixir #6

```
foo = 3

bar = "whatever"

[foo, bar] = ["hello", "world"]

[1,2] = foo

foo = [1,2]

[a,b,c] = [1, 2, ["a", "b"]]

[a, b[c,d]] = [1,2["hello", "world]]

%{"key" => v} = %{"key" => "my stuff"}

[a, ^v] = [1, "my_stuff"] 

defmodule Alch do
    def mapping(%{"key" => value}) do
        IO.puts value
    end
end

c("alch.ex")

Alch.mapping(%{"key" => "my super stuff"})
```

- Mastering the Pipe Operator | Zero to Hero in Elixir #7

```
input = "halo@Gmail.com,HALO@Gmail.com,halo2@GAMIL.com"

String.downcase input

String.split(String.downcase(input), ",")

Enum.uniq(String.split(String.downcase(input), ","))

String.downcase(input) |> String.split(",") |> Enum.uniq

input |> String.downcase() |> String.split(",") |> Enum.uniq

input |> String.downcase() |> IO.inspect() |> String.split(",")

input |> String.downcase() |> IO.inspect(label: "hi") |> String.split(",")
```

- Guess the Word | Zero to Hero in Elixir #8

```
# "bread"

hints = "flour, water, yeast, bakery"
IO.puts "Hints: #{hints}"

guess = IO.gets "Guest wht word: "
guess = String.trim(guess)

case guess do
    "bread" ->
        IO.puts "won!"
    _ -> 
        IO.puts "lost!"
end

```