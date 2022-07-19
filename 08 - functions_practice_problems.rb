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

