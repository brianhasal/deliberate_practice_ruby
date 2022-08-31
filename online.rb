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
