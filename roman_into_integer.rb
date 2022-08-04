# 13. Roman to Integer

# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Value       Symbol       Value
#               I              1
#    4    I     V           I  5
#    9    I     X           I  10
#    40   X     L           X  50
#    90   X     C           X  100
#    400  C     D           C  500
#    900  C     M           C 1000


# For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

# I can be placed before V (5) and X (10) to make 4 and 9. 
# X can be placed before L (50) and C (100) to make 40 and 90. 
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.

 

# Example 1:

string1 = "III"
# Output: 3
# Explanation: III = 3.



# Example 2:

string2 = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.



# Example 3:

string3 = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 

# Constraints:

# 1 <= s.length <= 15
# s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
# It is guaranteed that s is a valid roman numeral in the range [1, 3999].



def roman_to_int(string)

  total = 0

  if string.include?("CM")
    string.sub!('CM', '')
    total += 900
  end

  if string.include?("CD")
    string.sub!('CD', '')
    total += 400
  end

  if string.include?("XC")
    string.sub!('XC', '')
    total += 90
  end

  if string.include?("XL")
    string.sub!('XL', '')
    total += 40
  end

  if string.include?("IX")
    string.sub!('IX', '')
    total += 9
  end

  if string.include?("IV")
    string.sub!('IV', '')
    total += 4
  end
  
  total += string.count("M") * 1000
  total += string.count("D") * 500
  total += string.count("C") * 100
  total += string.count("L") * 50
  total += string.count("X") * 10
  total += string.count("V") * 5
  total += string.count("I")

  # s.each_char do |c|
  #   case c
  #   when "M"
  #     total += 1000
  #   when "D"
  #     total += 500
  #   when "C"
  #     total += 100    
  #   when "L"
  #     total += 50
  #   when "X"
  #     total += 10
  #   when "V"
  #     total += 5
  #   when "I"
  #     total += 1
  #   end
  # end
  
  return total  

end


p roman_to_int(string1)
p roman_to_int(string2)
p roman_to_int(string3)
p roman_to_int("MMMCMXCIX")
p roman_to_int("MMMDCCCLXXXVIII")
p roman_to_int('MMMDCCXCVIII')

