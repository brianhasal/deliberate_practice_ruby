# Two Sum I
# in list Two Pointers

# Description
# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Specifically use nested loops to solve this exercise even though there are other approaches as well.

input = [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

input2 = [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)
# make a function accepts array
# make funcation that accepts index to iterate through array


def two_sum(array)
  out_array = []
  i = 0
  while i  < array.length
    index2 = i + 1
    while index2 < array.length
      if array[i] + array[index2] == 10
        out_array << array[i] 
        out_array << array[index2]
        return out_array
      end
      index2 += 1
    end
    i += 1
  end
  return false
end


p two_sum(input)
p two_sum(input2)





