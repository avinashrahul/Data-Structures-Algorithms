# We can say that selection sort runs in \Theta(n^2) Θ(n2) time in all cases.

# arr[] = 64 25 12 22 11

# // Find the minimum element in arr[0...4]
# // and place it at beginning
# 11 25 12 22 64

# // Find the minimum element in arr[1...4]
# // and place it at beginning of arr[1...4]
# 11 12 25 22 64

# // Find the minimum element in arr[2...4]
# // and place it at beginning of arr[2...4]
# 11 12 22 25 64

# // Find the minimum element in arr[3...4]
# // and place it at beginning of arr[3...4]
# 11 12 22 25 64


# Selection sort (very slow on large lists)

a = [9,8,6,1,2,5,4,3,9,50,12,11]
n = a.size - 1

n.times do |i|
  index_min = i

  (i + 1).upto(n) do |j|
    index_min = j if a[j] < a[index_min]
  end

  # Yep, in ruby I can do that, no aux variable. w00t!
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end
print a

