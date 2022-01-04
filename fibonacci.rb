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

def fibs_rec(num, results = [0, 1])
  return results if results.length >= num

  results << results[-1] + results[-2]
  fibs_rec(num, results)
end

p fibs(3) # -> [0, 1, 1]
p fibs_rec(3) # -> [0, 1, 1]
