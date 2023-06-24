def merge_sort(arr)
    return arr if arr.length <= 1
  
    # Divide the array into two halves
    mid = arr.length / 2
    left_half = arr[0...mid]
    right_half = arr[mid..-1]
  
    # Recursively sort the two halves
    sorted_left = merge_sort(left_half)
    sorted_right = merge_sort(right_half)
  
    # Merge the sorted halves
    merge(sorted_left, sorted_right)
  end
  
  def merge(left, right)
    result = []
    i = 0
    j = 0
  
    while i < left.length && j < right.length
      if left[i] <= right[j]
        result << left[i]
        i += 1
      else
        result << right[j]
        j += 1
      end
    end
  
    # Append any remaining elements from the left and right halves
    result.concat(left[i..-1]) if i < left.length
    result.concat(right[j..-1]) if j < right.length
  
    result
  end
  
  # Example usage:
  arr = [8, 3, 1, 5, 2, 4, 7, 6]
  sorted_arr = merge_sort(arr)
  puts sorted_arr.join(", ")  # Output: 1, 2, 3, 4, 5, 6, 7, 8
  
  