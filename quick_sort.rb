require 'pry'

# quicksort's worst-case running time is Θ(n2)

# quicksort's best-case running time is Θ(nlog(n))

# quicksort's average-case running time is Θ(nlog(n))


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

def quicksort(arr)
  if arr.length <=1
    return arr
  else
    # Pick a random pivot and delete from array
    pivot = arr.sample
    arr.delete_at(arr.index(pivot))
    less = []
    greater = []
    arr.each do |e|
      if e <= pivot
        less << e
      else
        greater << e
      end
    end

    sorted_array = []
    sorted_array << quicksort(less)
    sorted_array << pivot
    sorted_array << quicksort(greater)
    sorted_array.flatten
  end
end

print quicksort([5, 5, -5, -5, 11, 11, 0, 0, 3, 3])
