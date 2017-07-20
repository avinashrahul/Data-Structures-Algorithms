require 'pry'
# Ruby uses by default Quick Sort ALgorithm to sort an array when .sort is used
#
# We pick a random Pivot and then Iterate over that Picot through the array
#
# Ex: [3, 7, 8, 5, 2, 1, 9, 5, 4]
#
# 1. Lets say 4 is the Pivot we start comparing with 3. Since 3 < 4 we leave it
#     [3, 7, 8, 5, 2, 1, 9, 5, 4]
# 2. We compare 7 with 4. Since 7 > 4 we move 4 to i-1 position, and then move 7 to 4 position and then  move 5 to 7 position
#     [3, 5, 8, 5, 2, 1, 9, 4, 7]
# 3. We compare 5 with 4. Since 5 > 4 we move 4 to i-1 position, and then move 5 to 4 position and then move 9 to 5 position
#     [3, 9, 8, 5, 2, 1, 4, 5, 7]
# 4. We compare now 4 with 9. Since 9 > 4 we move 4 to i-1 position, and then 9 to 4 place, and then 1 to 9 place.
#     [3, 1, 8, 5, 2, 4, 9, 5, 7]

#lets use meta programming to solve this

class Array
  def quick_sort
    return [] if empty?
    pivot = delete_at(rand(size)) # Pulls out the random VALUE
    # partition is ruby array method which partitions into two arrays based on some condition
    # If random pivot is 21
    # left = [13, 17, 18, 15, 11, 19, 15]
    # right = [41]
    left, right = partition(&pivot.method(:>))

    # Iterate calling multiple times of the same method
    return *left.quick_sort, pivot, *right.quick_sort
  end
end

print [13, 17, 18, 15, 21, 11, 19, 15, 41].quick_sort
