defmodule AdventOfCode2019.Problem02Spec do
  @moduledoc false

  use ESpec, async: true

  alias AdventOfCode2019.Problem02

  describe "Applying an intcode" do
    context "with opcode for addition" do
      it "should put the sum at the correct location" do
        intcodes = [1, 0, 0, 0, 99]

        expect Problem02.run_instruction(intcodes, Enum.take(intcodes, 4))
               |> to(match_list [2, 0, 0, 0, 99])
      end

      it "should put the multiplication at the correct location" do
        intcodes = [2, 4, 4, 0, 99]

        expect Problem02.run_instruction(intcodes, Enum.take(intcodes, 4))
               |> to(match_list [9801, 4, 4, 0, 99])
      end
    end
  end
end
