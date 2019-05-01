defmodule SplitBillTest do
  use ExUnit.Case
  doctest SplitBill

  test "split 0 for 3 people" do
    group = %{
      :A => 0,
      :B => 0,
      :C => 0
     }
    assert SplitBill.split(group) == %{A: 0.0, B: 0.0, C: 0.0}
  end

  test "split 20 for 3 people" do
    group = %{
      :A => 20,
      :B => 15,
      :C => 10
     }
    assert SplitBill.split(group) == %{A: -5.0, B: 0.0, C: 5.0}
  end
end
