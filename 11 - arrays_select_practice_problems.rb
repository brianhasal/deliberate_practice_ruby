#  1. Start with an array of numbers and create a new array with only the numbers less than 20.
#     For example, [2, 32, 80, 18, 12, 3] becomes [2, 18, 12, 3].

array = [2, 32, 80, 18, 12, 3]
array_less = array.select {|num| num < 20}
# p array_less

#  2. Start with an array of strings and create a new array with only the strings that start with the letter "w".
#     For example, ["winner", "winner", "chicken", "dinner"] becomes ["winner", "winner"].

array = ["winner", "winner", "chicken", "dinner"]
array_w = array.select {|word| word[0] == "w"}
# p array_w


#  3. Start with an array of hashes and create a new array with only the hashes with prices greater than 5 (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes [{name: "chair", price: 100}].
array = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
array_price = array.select {|item| item[:price] > 5}
# p array_price


#  4. Start with an array of numbers and create a new array with only the even numbers.
#     For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].
array = [2, 4, 5, 1, 8, 9, 7]
array_evens = array.select {|number| number % 2 == 0}
# p array_evens

#  5. Start with an array of strings and create a new array with only the strings shorter than 4 letters.
#     For example, ["a", "man", "a", "plan", "a", "canal", "panama"] becomes ["a", "man", "a", "a"].
array = ["a", "man", "a", "plan", "a", "canal", "panama"]
array_short = array.select {|word| word.length < 4}
p array_short




