defmodule SplitBill do

  def split(group) do
    first = group[:A]
    second = group[:B]
    third = group[:C]

    sum = first + second + third
    amount = sum/3

    group = %{:A => amount-first,
    :B => amount-second,
    :C => amount-third}
    group
  end

end
