defmodule Dictionary do

  @word_list "assets/words.txt" # path to word list
    |> File.read!() # use elixir pipeline to pass path in
    |> String.split(~r/\n/, trim: true) # augment file contents

  def random_word do
    @word_list
    Enum.random()
  end
end
