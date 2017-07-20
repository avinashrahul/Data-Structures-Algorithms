# Every element in an array compares with adjacent element and if it is greater it swaps the two adjacent elements
# Ex: array = [1, 4, 2, 5, 3]
#             [1, 2, 4, 5, 3]
#             [1, 2, 4, 3, 5]
#             [1, 2, 3, 4, 5]

def bubble_sort(array)
  array_length = array.length

  loop do
    swapped = false
    # It loops length - 1 times until some condition did not satisfy
    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        # If first element is greater than second element then swap
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped  = true
      end
    end
    break unless swapped
  end
  array
end

array = [1, 4, 2, 5, 3]
print bubble_sort(array)

# This is the worst Performance Algorithm and should not be used in production.
