# 1. Write a function that takes in a number and returns the number times two. Then run the function and print the result.

def times_two(num)
  return num * 2
end

# p times_two(3)


# 2. Write a function that takes in a string and returns the string with all capital letters. Then run the function and print the result.

def all_caps(string)
  return string.upcase
end

p all_caps("hello")


# 3. Write a function that takes in two numbers and returns the first number subtracted by the second. Then run the function and print the result.

# 4. Write a function that takes in a number and returns the number times itself. Then run the function and print the result.

# 5. Write a function that takes in a string and returns the first letter of the string. Then run the function and print the result.

# 6. Write a function that takes in three strings and returns a string that combines all three strings with spaces in between. Then run the function and print the result.

# 7. Write a function that takes in a number and returns the number as a string. Then run the function and print the result.

# 8. Write a function that takes in a string and returns the string repeated 5 times. Then run the function and print the result.

# 9. Write a function that takes in 3 numbers and returns the average (the sum divided by 3.0). Then run the function and print the result.

# 10. Write a function that takes in a number and returns the number times 10 plus 30. Then run the function and print the result.


# SOLUTIONS: https://gist.github.com/peterxjang/6a26d3c698c651dd6e9ccb168d32648c






















# 1. Write a function that takes in a number and returns the number times two. Then run the function and print the result.

def times_two(num)
  return num * 2
end

# puts times_two(4)

# 2. Write a function that takes in a string and returns the string with all capital letters. Then run the function and print the result.

def upcaser(string)
  return string.upcase
end

# puts upcaser("hello")


# 3. Write a function that takes in two numbers and returns the first number subtracted by the second. Then run the function and print the result.

def subtractor(num, num2)
  num -= num2
  return num
end

# p subtractor(8, 3)


# 5. Write a function that takes in a string and returns the first letter of the string. Then run the function and print the result.

def first_letter(string)
  return string[0]

end

# puts first_letter("hello")

# 6. Write a function that takes in three strings and returns a string that combines all three strings with spaces in between. Then run the function and print the result.

def combine(string, string2, string3)
  "#{string} #{string2} #{string3}"

end

# puts combine("hello", "mr", "sunshine")

