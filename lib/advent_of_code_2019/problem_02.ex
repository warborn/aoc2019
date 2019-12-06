defmodule AdventOfCode2019.Problem02 do
  @moduledoc """
  Utility functions to resolve the second problem of advent of code 2019
  """

  alias AdventOfCode2019.Utils

  @opcodes %{1 => &Kernel.+/2, 2 => &Kernel.*/2}
  @input Utils.File.get_as_list("02.txt")
         |> Enum.map(&String.to_integer/1)
         |> List.replace_at(1, 12)
         |> List.replace_at(2, 2)

  def part1 do
    intcodes = @input |> Enum.chunk_every(4)

    Enum.reduce(intcodes, @input, fn instruction, acc -> run_instruction(acc, instruction) end)
  end

  def run_instruction(list, [opcode, pos1, pos2, put_at]) when opcode >= 1 and opcode <= 2 do
    opcode |> to_operation |> run(list, pos1, pos2, put_at)
  end

  def run_instruction(list, _), do: list

  defp to_operation(opcode), do: @opcodes[opcode]

  defp run(operation, list, pos1, pos2, put_at) do
    operand1 = Enum.at(list, pos1)
    operand2 = Enum.at(list, pos2)
    value = operation.(operand1, operand2)

    list |> List.replace_at(put_at, value)
  end
end
