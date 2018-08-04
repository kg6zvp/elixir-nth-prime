defmodule NthPrimeTest do
  use ExUnit.Case
  doctest NthPrime

  test "finds base case prime number" do
	assert NthPrime.find_nth(1) == 2
  end

  test "finds prime number" do
	assert NthPrime.find_nth(2) == 3
  end

  test "finds 6th prime number" do
	assert NthPrime.find_nth(6) == 13
  end

  test "finds 3,500th prime number" do
    assert NthPrime.find_nth(3500) == 32609 # picked randomly from online source
  end

  test "tests if Kobayashi Maru-inspired solution works" do
    NthPrime.kobayashi_maru == 104743
  end
end
