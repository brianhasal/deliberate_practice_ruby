
# VIDEO: Reverse String
# in list Basic String
# Description
# VIDEO: Algorithm Ladder #02: Basic String

# Write a function that returns the reverse of a given string.

input = "abcde"
# Output: “edcba”

input = input.reverse
# p input



# Show Me The Money
# in list Basic String
# Description
# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

input = "i hate $ but i love money i know i know im crazy"
# Output: true

input_a =  "abcdefghijklmnopqrstuvwxyz"
# Output: false

def money_finder(string)
  string.each_char do |char|
    if char == "$"
      return true
    end
  end
  return false
end

# p money_finder(input)
# p money_finder(input_a)


# Alternate Capitals
# in list Basic String
# Description
# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

input = "hello, how are your porcupines today?"
# Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”


def alt_caps(string)
  new_string = ""
  i = 0
  string.each_char do |char|
    if i % 2 != 0
      new_string += "#{char.upcase}"
    else
      new_string += "#{char}"
    end
    i += 1
  end
  return new_string
end

p alt_caps(input)




# First Duplicate Character
# in list Basic String
# Description
# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”



# Palindrome
# in list Basic String
# Description
# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# Input: “baloney”
# Output: false




# Hamming ->
# in list Basic String
# Description
# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0




# Reverse Words
# in list Basic String
# Description
# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”



