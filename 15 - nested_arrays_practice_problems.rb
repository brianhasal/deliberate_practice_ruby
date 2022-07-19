#  3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
#     For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].

array = ["a", "b", "c", "d"]

index = 0
out_array = []
while index < array.length
  array.each do |letter|
    if letter != array[index]
      out_array << "#{array[index]}#{letter}"
    end
  end
  index += 1
end

# p out_array


#  6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
#     For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].

array1 = [1, 2]
array2 = [6, 7, 8]

def summer(array1, array2)

  out_array = []

  array1.each do |number1|
    array2.each do |number2|
      out_array << number1 + number2
    end

  end
  
  return out_array

end

# p summer(array1, array2)


#  9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
#     For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].

array = [2, 5, 3, 1, 0, 7, 11]
output = [3, 7]


def two_to_ten(array)
  i = 0
  out_array = []
  while i < array.length
    current_no = array[i]
    sub_i = i + 1
    while sub_i < array.length
      if current_no + array[sub_i] == 10
        out_array << current_no
        out_array << array[sub_i]
        return out_array
      end
      sub_i += 1
    end
    i += 1
  end
  return false
end

p two_to_ten(array)


