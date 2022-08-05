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

# Input: s = "III"
# Output: 3
# Explanation: III = 3.



# Example 2:

# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.



# Example 3:

# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 

# Constraints:

# 1 <= s.length <= 15
# s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
# It is guaranteed that s is a valid roman numeral in the range [1, 3999].



int = 1444

def int_to_roman(int)
  string_out = ""

  ones = int % 10
  int -= ones

  tens = int % 100
  int -= tens

  hundreds = int % 1000

  thousands = int - hundreds

  if thousands > 1
    focus_number = thousands / 1000
    focus_number.times do
      string_out += "M"
    end
  end

  if hundreds > 1
    focus_number = hundreds / 100
    if focus_number <= 3
      focus_number.times do 
        string_out += "C"
      end
    end

    if focus_number == 4
      string_out += "CD"
    end

    if focus_number == 5
      string_out += "D"
    end

    if focus_number >= 6 && focus_number <= 8
      string_out += "D"
      focus_reduced = focus_number - 5
      focus_reduced.times do
        string_out += "C"
      end
    end

    if focus_number == 9
      string_out += "CM"
    end

  end

  if tens > 1
    focus_number = tens / 10
    if focus_number <= 3
      focus_number.times do 
        string_out += "X"
      end
    end

    if focus_number == 4
      string_out += "XL"
    end

    if focus_number == 5
      string_out += "L"
    end

    if focus_number >= 6 && focus_number <= 8
      string_out += "L"
      focus_reduced = focus_number - 5
      focus_reduced.times do
        string_out += "X"
      end
    end

    if focus_number == 9
      string_out += "XC"
    end

  end

  if ones >= 1
    focus_number = ones
    if focus_number <= 3
      focus_number.times do 
        string_out += "I"
      end
    end

    if focus_number == 4
      string_out += "IV"
    end

    if focus_number == 5
      string_out += "V"
    end

    if focus_number >= 6 && focus_number <= 8
      string_out += "V"
      focus_reduced = focus_number - 5
      focus_reduced.times do
        string_out += "I"
      end
    end

    if focus_number == 9
      string_out += "IX"
    end

  end

  return string_out

end

p int_to_roman(int)
p int_to_roman(3888)
# MMMDCCCLXXXVIII
# MMMDCCCLXXXVIII