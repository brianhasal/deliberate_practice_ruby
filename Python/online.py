###Credit Card Mask
# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples
# "4556364607935616" --> "############5616"
#      "64607935616" -->      "#######5616"
#                "1" -->                "1"
#                 "" -->                 ""

# // "What was the name of your first pet?"

# "Skippy" --> "##ippy"

# "Nananananananananananananananana Batman!"
# -->
# "####################################man!"


# output = Test.assert_equals(maskify('4556364607935616'), '############5616')
# output = Test.assert_equals(maskify('1'), '1')
# output = Test.assert_equals(maskify('11111'), '#1111')

# input = "7654321"






### Filling an Array pt 1

# We want an array, but not just any old array, an array with contents!

# Write a function that produces an array with the numbers 0 to N-1 in it.

# For example, the following code will result in an array containing the numbers 0 to 4:

# arr(5) // => [0,1,2,3,4]
# Note: The parameter is optional. So you have to give it a default value.














# Highest Scoring Word

# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

# output = {
#   Test.assert_equals(high('man i need a taxi up to ubud'), 'taxi')
#   Test.assert_equals(high('what time are we climbing up the volcano'), 'volcano')
#   Test.assert_equals(high('take me to semynak'), 'semynak')
#   Test.assert_equals(high('aa b'), 'aa')
#   Test.assert_equals(high('b aa'), 'b')
#   Test.assert_equals(high('bb d'), 'bb')
#   Test.assert_equals(high('d bb'), 'd') 
#   Test.assert_equals(high('aaa b'), 'aaa')
# }




# Subtract the sum

# Complete the function which get an input number n such that n >= 10 and n < 10000, then:

# Sum all the digits of n.
# Subtract the sum from n, and it is your new n.
# If the new n is in the list below return the associated fruit, otherwise return back to task 1.
# Example
# n = 325
# sum = 3+2+5 = 10
# n = 325-10 = 315 (not in the list)
# sum = 3+1+5 = 9
# n = 315-9 = 306 (not in the list)
# sum = 3+0+6 = 9
# n =306-9 = 297 (not in the list)
# .
# .
# .
# ...until you find the first n in the list below.

# There is no preloaded code to help you. This is not about coding skills; think before you code

# 1-kiwi
# 2-pear
# 3-kiwi
# 4-banana
# 5-melon
# 6-banana
# 7-melon
# 8-pineapple
# 9-apple
# 10-pineapple
# 11-cucumber
# 12-pineapple
# 13-cucumber
# 14-orange
# 15-grape
# 16-orange
# 17-grape
# 18-apple
# 19-grape
# 20-cherry
# 21-pear
# 22-cherry
# 23-pear
# 24-kiwi
# 25-banana
# 26-kiwi
# 27-apple
# 28-melon
# 29-banana
# 30-melon
# 31-pineapple
# 32-melon
# 33-pineapple
# 34-cucumber
# 35-orange
# 36-apple
# 37-orange
# 38-grape
# 39-orange
# 40-grape
# 41-cherry
# 42-pear
# 43-cherry
# 44-pear
# 45-apple
# 46-pear
# 47-kiwi
# 48-banana
# 49-kiwi
# 50-banana
# 51-melon
# 52-pineapple
# 53-melon
# 54-apple
# 55-cucumber
# 56-pineapple
# 57-cucumber
# 58-orange
# 59-cucumber
# 60-orange
# 61-grape
# 62-cherry
# 63-apple
# 64-cherry
# 65-pear
# 66-cherry
# 67-pear
# 68-kiwi
# 69-pear
# 70-kiwi
# 71-banana
# 72-apple
# 73-banana
# 74-melon
# 75-pineapple
# 76-melon
# 77-pineapple
# 78-cucumber
# 79-pineapple
# 80-cucumber
# 81-apple
# 82-grape
# 83-orange
# 84-grape
# 85-cherry
# 86-grape
# 87-cherry
# 88-pear
# 89-cherry
# 90-apple
# 91-kiwi
# 92-banana
# 93-kiwi
# 94-banana
# 95-melon
# 96-banana
# 97-melon
# 98-pineapple
# 99-apple
# 100-pineapple


# output = Test.assert_equals(subtract_sum(10), "apple")






# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

#   Examples input/output:
  
#   XO("ooxx") => true
#   XO("xooxx") => false
#   XO("ooxXm") => true
#   XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
#   XO("zzoo") => false






# String Tops
# Task
# Write a function that accepts msg string and returns local tops of string from the highest to the lowest.
# The string's tops are from displaying the string in the below way:

#                                                       3 
#                               p                     2   4
#             g               o   q                 1
#   b       f   h           n       r             z 
# a   c   e       i       m          s          y
#       d           j   l             t       x
#                     k                 u   w 
#                                         v

# The next top is always 1 character higher than the previous one. For the above example, the solution for the abcdefghijklmnopqrstuvwxyz1234 input string is 3pgb.

# When the msg string is empty, return an empty string.
# The input strings may be very long. Make sure your solution has good performance.
# Check the test cases for more samples.







# Mathemagics: the 21 Card Trick

# The Twenty-One Card Trick, also known as the 11th card trick or three column trick, is a simple self-working card trick that uses basic mathematics to reveal the user's selected card.
# The game uses a selection of 21 cards out of a standard deck. These are shuffled and the player selects one at random. The cards are then dealt out face up in three columns of 7 cards each. The player points to the column containing their card. The cards are picked up and the process is repeated three times, at which point the magician reveals the selected card.

# Source: Wikipedia

# Your task is to implement an algorithm that is able to execute the Twenty-One Card Trick. To simplify things, the cards will be changed to the set of integers between 1 and 21(inclusive). The function will be passed as argument a member of the audience that has selected a certain card and has a method get_input that receives a list of 3 lists as arguments and returns the index of the row contained the selected card. Example:

# audience = Audience.new 13

# > audience.get_input [[1,2,3,4,5,6,7], [8,9,10,11,12,13,14], [15,16,17,18,19,20,21]]
# 1 # Since 13 is at the 2nd row
# After 3 times it is asked, however, the audience member no longer will give an answer. Use these three functions invokations to discover which card the audience member has.


