# Array Mesh I
# in list Two Pointers
# Description
# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

# Array Mesh II
# in list Two Pointers
# Description
# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# Largest Product
# in list Two Pointers
# Description
# Find the largest product of any two numbers within a given array.

input = [5, -2, 1, 9, -7, 2, 6]
# Output: 63 (-9 * -7)

def largest_product(array)
  i = 0
  highest_no = array[0]
  while i <= array.length - 2
    array.each do |num|
      unless i == array.index(num)
        if num * array[i] > highest_no
          highest_no = num * array[i]
        end
      end
    end
    i += 1
  end
  return highest_no
end

# p largest_product(input)

# Two Sum I
# in list Two Pointers
# Description
# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Specifically use nested loops to solve this exercise even though there are other approaches as well.

input = [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

input2 = [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

def sum10(array)
  out_array = []
  array.each do |target_no|
    array.each do |compare|
      if target_no != compare
        if target_no + compare == 10
          out_array << target_no
          out_array << compare
          return out_array
        end
      end
    end
  end
  if out_array.length == 0
    return false
  end
end

# p sum10(input)
# p sum10(input2)

# Merge Sorted Arrays ->
# in list Two Pointers
# Description
# Given two sorted arrays, merge the second array into the first array while ensuring that the first array remains sorted. Do not use any built-in sort methods.

# Input :
first_a = [1, 5, 8]
second_a = [3, 6, 9]

# Modified A : [1, 5, 6, 8, 9]

def merger(array1, array2)
  out_array = []
  a1_i = 0
  a2_i = 0
  index = 0
  total_amount = array1.length + array2.length
  # p array1[a1_i]
  # p array2[a2_i]

  while index < total_amount
    p index

    while a1_i < array1.length
      if array2[a2_i] > array1[a1_i]
        out_array << array1[a1_i]
        a1_i += 1
        p array1[a1_i]
        p array2[a2_i]
        p "a1-i fired"
        p out_array
        p "##########"
        break
      end
    end
    
    while a2_i < array2.length
      if array2[a2_i] < array1[a1_i]
        out_array << array2[a2_i]
        a2_i += 1
        p array1[a1_i]
        p array2[a2_i]
        p "a2-i fired"
        p out_array
        p "##########"
        break
      end
    end

    index += 1
  end
  # return out_array
end

merger(first_a, second_a)

# 100 Coolio Array
# in list Two Pointers
# Description
# Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.

# A "100 Coolio Array" meets the following criteria:

# Its first and last numbers add up to 100,
# Its second and second-to-last numbers add up to 100,
# Its third and third-to-last numbers add up to 100,
# and so on and so forth.

# Here are examples of 100 Coolio Arrays:

# [1, 2, 3, 97, 98, 99]
# [90, 20, 70, 100, 30, 80, 10]

# Longest Common Prefix
# in list Two Pointers
# Description
# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.
