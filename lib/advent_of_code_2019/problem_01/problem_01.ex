defmodule AdventOfCode2019.Problem01 do
  @moduledoc """
  Utility functions to resolve the first problem of advent of code 2019
  """

  alias AdventOfCode2019.Utils

  @input Utils.File.get_lines_of_file("01.txt") |> Enum.map(&String.to_integer/1)

  def part1 do
    @input
    |> Enum.map(&get_fuel/1)
    |> Enum.reduce(&+/2)
  end

  def part2 do
    @input
    |> Enum.map(&get_accum_fuel/1)
    |> Enum.reduce(&+/2)
  end

  def get_fuel(mass), do: floor(mass / 3) - 2

  def get_accum_fuel(mass) do
    fuel = get_fuel(mass)

    if fuel <= 0 do
      0
    else
      fuel + get_accum_fuel(fuel)
    end
  end
end
