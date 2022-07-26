#  1. Start with an array of numbers and compute the sum of all the numbers.
#     For example, [5, 10, 8, 3] becomes 26.

input = [5, 10, 8, 3]

def summer(array)
  return array.reduce(0) {|sum, num| sum += num}
end

p summer(input)

#  2. Start with an array of strings and combine them all into a single string.
#     For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".

input = ["volleyball", "basketball", "badminton"]

def stringer(array)
  return array.reduce(0) {|string, rem_str| ""}

end

p stringer(input)

#  3. Start with an array of hashes and compute the sum of the prices (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.

input = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

def hash_sum(array)
  return array.reduce(0) {|total, item| total + item[:price]}
end

p hash_sum(input)

#  4. Start with an array of numbers and compute the the minumum number.
#     For example, [5, 10, 8, 3, 9] becomes 3.

#  5. Start with an array of strings and compute the total length of all the strings.
#     For example, ["volleyball", "basketball", "badminton"] becomes 29.

#  6. Start with an array of hashes and find the hash with the lowest price (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.

#  7. Start with an array of numbers and compute product of all the numbers.
#     For example, [5, 10, 8, 3] becomes 1200.

#  8. Start with an array of strings and combine them all into a single string, separated by dashes.
#     For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

#  9. Start with an array of hashes and find the hash with the shortest name (from the :name key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.

# 10. Start with an array of numbers and compute the maximum number.
#     For example, [5, 10, 8, 3] becomes 10.


# SOLUTIONS (using while loop): https://gist.github.com/peterxjang/376c8931a48549889eb3c9bc091e9f43
# SOLUTIONS (using .each shortcut): https://gist.github.com/peterxjang/379c9945774f51027750c59d6e4395df
# SOLUTIONS (using .reduce shortcut): https://gist.github.com/peterxjang/b69183e2d555964ce3936893f423ef35




















#  object.reduce(starting_index) {|starting_value, variable_for_remaining_values| fuction...}




#  1. Start with an array of numbers and compute the sum of all the numbers.
#     For example, [5, 10, 8, 3] becomes 26.

array = [5, 10, 8, 3]
array_sum = array.reduce(0) {|sum, num| sum + num}
# p array_sum

#  2. Start with an array of strings and combine them all into a single string.
#     For example, ["volleyball", "basketball", "badminton"] becomes "volleyballbasketballbadminton".





# array = ["volleyball", "basketball", "badminton"]
# array_crunch = array.reduce("") {|out, string| out + string}
# p array_crunch

#  3. Start with an array of hashes and compute the sum of the prices (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes 105.
array = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]
array_total = array.reduce(0) {|total, item| total + item[:price]}
# p array_total


#  4. Start with an array of numbers and compute the the minumum number.
#     For example, [5, 10, 8, 3, 9] becomes 3.
array = [5, 10, 8, 3, 9]
array_min = array.reduce(array[0]) do |low, number| 
  if low > number
    number
  else
    low
  end
end
# p array_min


#  5. Start with an array of strings and compute the total length of all the strings.
#     For example, ["volleyball", "basketball", "badminton"] becomes 29.
array = ["volleyball", "basketball", "badminton"]
array_sum_length = array.reduce(0) {|total, word| total + word.length}
# p array_sum_length

#####################
#  6. Start with an array of hashes and find the hash with the lowest price (from the :price key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "pencil", price: 1}.

array = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

lowest_price = array.reduce(array[0]) do |low, item|
  if low[:price] > item[:price]
    item
  else
    low
  end
end

# p lowest_price

#  7. Start with an array of numbers and compute product of all the numbers.
#     For example, [5, 10, 8, 3] becomes 1200.

array = [5, 10, 8, 3]
array_product = array.reduce(1) {|total, number| total * number}
# p array_product


#  8. Start with an array of strings and combine them all into a single string, separated by dashes.
#     For example, ["volleyball", "basketball", "badminton"] becomes "-volleyball-basketball-badminton-".

array = ["volleyball", "basketball", "badminton"]

array_dasher = array.reduce("-") {|string, word| string += "#{word}-"}

# p array_dasher

#  9. Start with an array of hashes and find the hash with the shortest name (from the :name key).
#     For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.

array = [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}]

array_short_name = array.reduce(array[0]) do |short_name, item|
  if short_name[:name].length > item[:name].length
    item
  else
    short_name
  end
end

# p array_short_name

# 10. Start with an array of numbers and compute the maximum number.
#     For example, [5, 10, 8, 3] becomes 10.

array = [5, 10, 8, 3]

array_max_num = array.reduce(array[0]) do |max, number|
  if number > max
    number
  else
    max
  end
end

# p array_max_num