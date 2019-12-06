defmodule AdventOfCode2019.Utils.File do
  @root File.cwd!()

  def get_lines_of_file(filename) do
    filename
    |> read_file
    |> String.split("\n")
  end

  def get_as_list(filename) do
    filename
    |> read_file
    |> String.split(",")
  end

  defp read_file(filename) do
    filepath = Path.join(@root, "/input/#{filename}")

    File.read!(filepath)
  end
end
