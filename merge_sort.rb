# frozen_string_literal: true

def merge(*subarrays)
  merged_collection = []
  until subarrays.any?(&:empty?)
    array_with_min_element = subarrays.min_by(&:first)
    merged_collection << array_with_min_element.shift
  end
  merged_collection.concat(*subarrays)
end

def merge_sort(array)
  return array if array.size < 2

  middle_index = array.size / 2
  left_sort = merge_sort(array[0...middle_index])
  right_sort = merge_sort(array[middle_index..])
  merge(left_sort, right_sort)
end

array_to_sort = [2, 1, 5, 8, 7, 6, 4, 3]
p merge_sort(array_to_sort) # -> returns [1, 2, 3, 4, 5, 6, 7, 8]
