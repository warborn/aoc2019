defmodule AdventOfCode2019.Solutions do
  @moduledoc """
  Solutions of the problems of advent of code 2019
  """

  alias AdventOfCode2019.Problem01

  def print_solutions() do
    print_solution(1, Problem01.part1(), Problem01.part2())
  end

  defp print_solution(problem_num, part1, part2) do
    [
      problem_text(problem_num),
      part_text(1, part1),
      part_text(2, part2)
    ]
    |> Enum.join("\n")
    |> IO.puts()
  end

  defp problem_text(num), do: "Problem #{num}:"
  defp part_text(num, solution), do: "\tPart #{num}: #{solution}"
end

AdventOfCode2019.Solutions.print_solutions()
