#  1. Convert an array of arrays into a hash.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.

# p out_hash

#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#     For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.

# p new_hash

#  3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
#     For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.

# p new_hash

#  4. Convert a hash into an array of arrays.
#     For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].

# hash1 = { "chair" => 100, "book" => 14 }

# def hash_converter(hash)
#   out_array = []
#   hash.each do |key, value|
#     out_array << [key, value]
#   end
#   return out_array
# end

# p hash_converter(hash1)

# p array

#  5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#     For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].


hash = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}

def array_of_hashes(hash)
  out_array = []
  hash.each do |key, value|
    # pp key
    # pp value
    # pp "xxxxxxxxxxx"
    value[:id] = key
    out_array << value

    
  end
  return out_array
end

pp array_of_hashes(hash)

# p array
