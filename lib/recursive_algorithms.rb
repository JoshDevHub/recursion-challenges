module RecursiveAlgorithms
  module_function

  def fibs(num)
    results = [0, 1]
    return results.first(num) if results.length >= num

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

    sequence << (sequence[-1] + sequence[-2])
    fibs_rec(num, sequence)
  end

  def merge_sort(array)
    return array if array.size < 2

    middle_index = array.size / 2
    left_sort = merge_sort(array[0...middle_index])
    right_sort = merge_sort(array[middle_index..])
    merge(left_sort, right_sort)
  end

  private

  def merge(*subarrays)
    merged_collection = []
    until subarrays.any?(&:empty?)
      array_with_min_element = subarrays.min_by(&:first)
      merged_collection << array_with_min_element.shift
    end
    merged_collection.concat(*subarrays)
  end
end
