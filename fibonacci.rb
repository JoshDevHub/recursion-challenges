# frozen_string_literal: true

def fibs(num)
  results = [0, 1]
  return results if results.length >= num

  first, second = results
  (num - 3).downto(0) do
    new_element = first + second
    first = second
    second = new_element
    results << new_element
  end
  results
end

def fibs_rec(num, sequence = [0, 1])
  return sequence.first(num) if sequence.length >= num

  sequence << sequence[-1] + sequence[-2]
  fibs_rec(num, sequence)
end

p fibs(8) # -> [0, 1, 1, 2, 3, 5, 8, 13]
p fibs_rec(8) # -> [0, 1, 1, 2, 3, 5, 8, 13]
