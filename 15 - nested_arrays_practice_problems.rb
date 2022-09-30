
#  1. Use a nested loop to convert an array of number pairs into a single flattened array.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].


array = [[1, 3], [8, 9], [2, 16]]

def flattener(array)
  out_array = []
  array.each do |pair|
    pair.each do |num|
      out_array << num
    end
  end
  return out_array
end

p flattener(array)


#  2. Use a nested loop with two arrays of strings to create a new array of strings with each string combined.
#     For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].

#  3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
#     For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].

input = ["a", "b", "c", "d"]


def combo_maker(array)
  out_array = []
  i = 0
  while i < array.length
    array.each do |letter|
      if letter != array[i]
        out_array << (letter + array[i])
      end
    end
    i += 1
  end
  return out_array
end

p combo_maker(input)



#  4. Use a nested loop to find the largest product of any two different numbers within a given array.
#     For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.

#  5. Use a nested loop to compute the sum of all the numbers in an array of number pairs.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes 39.

#  6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
#     For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].

#  7. Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
#     For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].

array = [2, 8, 3]


def products(array)
  out_array = []
  array.each do |root_no|
    array.each do |curr_no|
      out_array << root_no * curr_no
    end
  end
  return out_array
end

# p products(array)

#  8. Use a nested loop to find the largest sum of any two different numbers within an array.
#     For example, [1, 8, 3, 10] becomes 18.

#  9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
#     For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].

# 10. Use a nested loop to convert an array of string arrays into a single string.
#     For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".


# SOLUTIONS: https://gist.github.com/peterxjang/af8985dc4fb07ea14b4bd6ba41cb08f8


























#  3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
#     For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].

array = ["a", "b", "c", "d"]

def double_up(array)

  i = 0
  j = 0
  out_array = []
  while i < array.length
    while j < array.length
      if i != j
        out_array << "#{array[i]}#{array[j]}"
      end
      j += 1
    end
    i += 1
    j = 0
  end

  return out_array

end



p double_up(array)











# index = 0
# out_array = []
# while index < array.length
#   array.each do |letter|
#     if letter != array[index]
#       out_array << "#{array[index]}#{letter}"
#     end
#   end
#   index += 1
# end

# p out_array


#  6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
#     For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].

# array1 = [1, 2]
# array2 = [6, 7, 8]

# out_array = []

# array1.each do |num|
#   array2.each do |num2|
#     out_array << num + num2
#   end
# end

# p out_array













# def summer(array1, array2)

#   out_array = []

#   array1.each do |number1|
#     array2.each do |number2|
#       out_array << number1 + number2
#     end

#   end
  
#   return out_array

# end

# p summer(array1, array2)


#  9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
#     For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].

# array = [2, 5, 3, 1, 0, 7, 11]
# output = [3, 7]


# i = 0
# while i < array.length
#   j = i + 1
#   while array.length > j
#     if array[i] + array[j] == 10
#       pair = [array[i], array[j]]
#       return pair
#     end
#     j += 1
#   end
#   i += 1
# end










# def two_to_ten(array)
#   i = 0
#   out_array = []
#   while i < array.length
#     current_no = array[i]
#     sub_i = i + 1
#     while sub_i < array.length
#       if current_no + array[sub_i] == 10
#         out_array << current_no
#         out_array << array[sub_i]
#         return out_array
#       end
#       sub_i += 1
#     end
#     i += 1
#   end
#   return false
# end

# p two_to_ten(array)


