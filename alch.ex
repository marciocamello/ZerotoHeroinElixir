defmodule Alch do
    def hello(stuff) do
        stuff
    end
    def read_my_file(filename) do
        File.read(filename)
    end
    def mapping(%{"key" => value}) do
        IO.puts value
    end
end