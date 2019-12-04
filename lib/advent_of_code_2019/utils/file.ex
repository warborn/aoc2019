defmodule AdventOfCode2019.Utils.File do
  @root File.cwd!()

  def get_lines_of_file(filename) do
    filepath = Path.join(@root, "/input/#{filename}")
    content = File.read!(filepath)

    String.split(content, "\n")
  end
end
