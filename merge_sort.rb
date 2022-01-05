# frozen_string_literal: true

# TODO: Make neater
def merge_sort(array)
  return array if array.length < 2

  left_sort = merge_sort(array[0..(array.length / 2 - 1)])
  right_sort = merge_sort(array[(array.length / 2)..-1])
  merged = []
  left_idx = 0
  right_idx = 0
  while merged.length < array.length
    if right_sort[right_idx].nil?
      merged.push(left_sort[left_idx])
      left_idx += 1
    elsif left_sort[left_idx].nil?
      merged.push(right_sort[right_idx])
      right_idx += 1
    elsif left_sort[left_idx] < right_sort[right_idx]
      merged.push(left_sort[left_idx])
      left_idx += 1
    else
      merged.push(right_sort[right_idx])
      right_idx += 1
    end
  end
  merged
end

array_to_sort = [2, 1, 5, 8, 7, 6, 4, 3]
p merge_sort(array_to_sort) # -> returns [1, 2, 3, 4, 5, 6, 7, 8]
