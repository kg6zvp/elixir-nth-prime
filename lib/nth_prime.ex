defmodule NthPrime do
  @moduledoc """
  Documentation for NthPrime.

  I like both real and *cheat* solutions, so I included both.

  The find_nth/1 method allows the user to find the nth prime number.

  The kobayashi_maru solution only returns the 10,001st prime number.
  """

  defp find_nth(primes_list, num_primes, current_num, target_num) do
    cond do
      num_primes < target_num ->
        if Enum.any?(primes_list, fn(n) -> rem(current_num, n) == 0 end) do
          find_nth(primes_list, num_primes, current_num + 1, target_num)
        else
          find_nth(primes_list ++ [current_num], num_primes + 1, current_num + 1, target_num)
        end
      true ->
        primes_list
    end
  end

  def find_nth(n) do
    Enum.at(find_nth([2], 1, 3, n), -1)
  end

  def kobayashi_maru() do #had to
    104743
  end
end
