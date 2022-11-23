# Primes
# in list Basic Numbers
# Description
# Write a function that returns whether a given number is a prime number.




# 6n + 1 or 6n – 1

# def is_prime(number)
#   primes = []
#   core_5 = [2, 3, 5, 7, 11]



# end








# Fizzbuzz
# in list Basic Numbers
# Description
# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".


# function fizzbuzz() {
#   for (let i = 1; i <= 100; i++) {
#     if (i % 5 === 0 && i % 3 === 0) {
#       console.log("FIZZBUZZ");
#     }
#   }
# }








# Fibonacci Numbers ->
# in list Basic Numbers
# Description
# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

input = 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

def fibonacci_2(count)
  fib_array = [0, 1]
  if count <= 1
    return count
  else
    i = 0
    total = 0
    (count - 1).times do
      fib_array << fib_array[i] + fib_array[i + 1]
      i += 1
    end
    return fib_array[-1]
  end


end

# p fibonacci_2(20)


def fibonacci(count)
  if count <= 1
    return count
  else
    return fibonacci(count - 1) + fibonacci(count - 2)
  end
end

# p fibonacci(20)



# Leap Year
# in list Basic Numbers
# Description
# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

# If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.




# Multiples of 3 and 5
# in list Basic Numbers
# Description
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


def sum_of_multiples(number)
  total = 0
  i = 3
  while i < number
    if i % 3 == 0 && i % 5 == 0
      total += i
    elsif i % 3 == 0 
      total += i
    elsif i % 5 == 0
      total += i 
    end
    i += 1
  end
  return total
end

p sum_of_multiples(1000)



# Collatz Conjecture
# in list Basic Numbers
# Description
# The Collatz Conjecture or 3x+1 problem can be summarized as follows:

# Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.

# Given a number n, return the number of steps required to reach 1.

# Examples
# Starting with n = 12, the steps would be as follows:

# 12
# 6
# 3
# 10
# 5
# 16
# 8
# 4
# 2
# 1

# Resulting in 9 steps. So for input n = 12, the return value would be 9.

def collatz(number)
  if number == 1
    return 3
  end
  counter = 0
  until number == 1
    if number % 2 == 0
      number /= 2
    else
      number = (number * 3) + 1
    end
    counter += 1
  end
  return counter
end

# p collatz(361)

# Largest Palindrome Product
# in list Basic Numbers
# Description
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.






