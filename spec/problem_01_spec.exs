defmodule AdventOfCode2019.Fuel do
  @moduledoc false

  use ESpec, async: true

  alias AdventOfCode2019.Problem01

  describe "Calculate fuel" do
    context "from a given mass" do
      it "should return an integer" do
        expect Problem01.get_fuel(12) |> to(eq 2)
        expect Problem01.get_fuel(100_756) |> to(eq 33_583)
      end
    end

    context "from a given mass" do
      it "should return the accumulative fuel needed" do
        expect Problem01.get_accum_fuel(14) |> to(eq 2)
        expect Problem01.get_accum_fuel(100_756) |> to(eq 50346)
      end
    end
  end
end
