# Complexity - Best and Average = O(n square)
# best case - O(n)

# Let’s assume, that we our initial array is [2, 3, 1]. Sorted output should look like [1, 2, 3].
# final = [];
# We place pivot value from initial array to final. final = [2];
# We take second value from initial array and compare it with each element in final. 3 > 2.
# We insert 3 after 2, because it’s higher than all values in final. final = [2, 3];
# Finally, we take last element from initial array and compare it with items in final. 1 < 2. So, we insert 1 before the 2. final = [1, 2, 3];
# Method returns sorted array.

# Insertion sort algorithm
# Efficient for small number of elements

# Input
# [1, 5, 3, 4, 6, 3]

# Expected output
# [1, 3, 3, 4, 5, 6]

def insertion_sort(array)
    final = [array[0]]
    array.delete_at(0)
    # main code
    for i in array
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    # output
    final
end
array = [1, 5, 3, 4, 6, 3]
print insertion_sort(array)

