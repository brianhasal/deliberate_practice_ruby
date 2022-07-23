# 1. Make a hash to store a person's first name, last name, and email address. Then print each attribute on separate lines.

# 2. Make an array of hashes to store the first name and last name for 3 different people. Then print out the first person's info.

# 3. Make a hash to store prices for 3 different menu items. Then add a new menu item and price and print the hash to see the result.

# 4. Make a hash to store a book's title, author, number of pages, and language. Then print each attribute on separate lines.

# 5. Make an array of hashes to store the title and author for 3 different books. Then print out the third book's author.

# 6. Make a hash to store 3 different states and their captitals. Then add a new state and capital and print the hash to see the result.

# 7. Make a hash to store a laptop's brand, model, and year. Then print each attribute on separate lines.

# 8. Make an array of hashes to store the brand and model for 3 different laptops. Then print out the second laptop's model.

# 9. Make a hash to store definitions for 2 different words. Then add a new word and definition and print the hash to see the result.

hash = {"moon" => "night sky object", "sun" => "day sky object"}
hash["comet"] = "heavenly body"
# p hash


# 10. Make a hash to store a shirt's brand, color, and size. Then print each attribute on separate lines.


# SOLUTIONS: https://gist.github.com/peterxjang/d257aec07882d78009bd796ed53f81bb
























# 1. Make a hash to store a person's first name, last name, and email address. Then print each attribute on separate lines.

# person = {first_name: "Buddy", last_name: "Rich", email: "brich@google.com"}

# person2 = {:first_name => "Buddy", :last_name => "Long", :email => "blong@a.com"}

# print person2.each_value {|value| puts value}



# 2. Make an array of hashes to store the first name and last name for 3 different people. Then print out the first person's info.


# people = [{:first_name => "Billy", :last_name => "Madison"}, {:first_name => "Ally", :last_name => "McBeal"}, {:first_name => "Little", :last_name => "Nicky"}]

# p people[0]

# 3. Make a hash to store prices for 3 different menu items. Then add a new menu item and price and print the hash to see the result.


# items = [{"fries" => 2.5, "wings" => 6, "burger" => 3.5}]

# items[0]["malts"] = 2

# p items

# 4. Make a hash to store a book's title, author, number of pages, and language. Then print each attribute on separate lines.

# book = {:title => "The Alchemist", :author => 
# "Paolo Cohelo", :pages => 154, "language" => "spanish"}

# book.each {|key, value| puts "#{key}: #{value}"}


# 5. Make an array of hashes to store the title and author for 3 different books. Then print out the third book's author.

# authors = [{"The Alchemist" => "Paolo Cohelo"}, {"The Bible" => "four guys"}, {"Spider-Man" => "Stan Lee"}]

# puts authors[2]["Spider-Man"]

# 6. Make a hash to store 3 different states and their captitals. Then add a new state and capital and print the hash to see the result.

# capitals = {"California" => "Sacramento", "Texas" => "Austin", "New York" => "Albany"}

# capitals["Montana"] = "Helena"

# p capitals

# 7. Make a hash to store a laptop's brand, model, and year. Then print each attribute on separate lines.


# hash = {"brand" => "Toshiba", "model" => "XJKV7000", "year" => 2032}

# hash.each do |key, value|
#   p "#{key}: #{value}"
# end





