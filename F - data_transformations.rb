
# ETL #1
# You are given two parameters, an array and a number. 
# Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

input1 =  ["a", "e", "i", "o", "u"]
input2 = 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

def array_converter(array, num)
  out_hash = {}
  array.each do |number|
    out_hash[number] = num
  end
  return out_hash
end

# p array_converter(input1, input2)



# Flatten Hash in list Data Transformations
# Description
# Given a hash, return a flat array containing all the hash’s keys and values.

input = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

# Activity

def hash_flatten(hash)
  out_array = []
  hash.each do |key, value|
    out_array << key
    out_array << value
  end
  return out_array
end

# p hash_flatten(input)


# Flip Hash
# in list Data Transformations
# Description
# Given a hash, create a new hash that has the keys and values switched.

input = {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

def flipper(hash)
  out_hash = {}
  hash.each do |key, value|
    out_hash[value] = key
  end
  return out_hash
end

# p flipper(input)


# ETL #2
# in list Data Transformations
# Description
# You are given a hash in format #A, and you are to return the same data as a hash using format #B, as specified below:

input = {
  1 => ["A", "E", "I", "O", "U"]
}

# Output:

# { 'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1 }

input2 = {
  1 => ["A", "E"],
  2 => ["D", "G"]
}

# Output:

# {
# 'a' => 1,
# 'd' => 2,
# 'e' => 1,
# 'g' => 2
# }

input3 = {
  1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["K"],
  8 => ["J", "X"],
  10 => ["Q", "Z"]
}

# Output:

# {
# 'a' => 1,
# 'b' => 3,
# 'c' => 3,
# 'd' => 2,
# 'e' => 1,
# 'f' => 4,
# 'g' => 2,
# 'h' => 4,
# 'i' => 1,
# 'j' => 8,
# 'k' => 5,
# 'l' => 1,
# 'm' => 3,
# 'n' => 1,
# 'o' => 1,
# 'p' => 3,
# 'q' => 10,
# 'r' => 1,
# 's' => 1,
# 't' => 1,
# 'u' => 1,
# 'v' => 4,
# 'w' => 4,
# 'x' => 8,
# 'y' => 4,
# 'z' => 10
# }




def hash_to_hash(hash)
  temp_hash = Hash.new
  out_hash = Hash.new
  hash.each do |key, value|
    temp_hash[value] = key
  end
  temp_hash.each do |key, value|
    key.each do |letter|
      out_hash[letter.downcase] = value
    end
  end
  out_hash
end

# p hash_to_hash(input)
# p hash_to_hash(input2)
# p hash_to_hash(input3)






# Complete the Data II ->
# in list Data Transformations
# Description
# Given an array of social media posts and an array of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

input1 = 
[
{title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
{title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
{title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
{title: 'Mondays are the worst', submitted_by: 403, likes: 644}
]

# And this array of users:

input2 = 
[
{user_id: 403, name: "Aunty Em"},
{user_id: 231, name: "Joelle P."},
{user_id: 989, name: "Lyndon Johnson"},
{user_id: 111, name: "Patti Q."},
]

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]


def post_user(array1, array2)
  out_array = []
  array1.each do |post|
    array2.each do |user|
      if post[:submitted_by] == user[:user_id]
        post[:submitted_by] = user[:name]
        out_array << post
      end
    end
  end
end

# p post_user(input1, input2)



# Book Organizer
# in list Data Transformations
# Description
# Given a list of books provided in this format:

input = [
{title: "The Lord of the Rings", author: "J. R. R. Tolkien", year: 1954 },
{title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960 },
{title: "1984", author: "George Orwell", year: 1949 },
{title: "Go Set a Watchman", author: "Harper Lee", year: 2015 },
{title: "The Hobbit", author: "J. R. R. Tolkien", year: 1937 },
{title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925 },
{title: "The Two Towers", author: "J. R. R. Tolkien", year: 1954 }
]

def hash_rearrange(array)
  out_array = []
  array.each do |book|
    author = book[:author]
    title = book[:title]
    year = book[:year]

    out_hash = Hash.new
    out_hash[author] = {title: title, year: year}
    out_array << out_hash
  end
  return out_array
end

p hash_rearrange(input)

# return the data in this new author-centric format:

# { "J. R. R. Tolkien" => [
# {title: "The Lord of the Rings", year: 1954 },
# {title: "The Hobbit", year: 1937 },
# {title: "The Two Towers", year: 1954 }
# ],
# "Harper Lee" => [
# {title: "To Kill a Mockingbird", year: 1960 },
# {title: "Go Set a Watchman", year: 2015 }
# ],
# "George Orwell" => [
# {title: "1984", year: 1949 }
# ],
# "F. Scott Fitzgerald" => [
# {title: "The Great Gatsby", year: 1925 }
# ]
# }





# ETL #3
# in list Data Transformations
# Description
# Given an array of Youtube videos, for example:

# [
# {title: 'How to Make Wood', author_id: 4, views: 6},
# {title: 'How to Seem Perfect', author_id: 4, views: 111},
# {title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202},
# {title: 'Why Pigs Stink', author_id: 1, views: 12}
# ]

# and an array of authors, for example:

# [
# {id: 1, first_name: 'Jazz', last_name: 'Callahan'},
# {id: 2, first_name: 'Ichabod', last_name: 'Loadbearer'},
# {id: 3, first_name: 'Saron', last_name: 'Kim'},
# {id: 4, first_name: 'Teena', last_name: 'Burgess'},
# ]

# Return a new array of videos in the following format, and only include videos that have at least 100 views:

# [
# {title: 'How to Seem Perfect', views: 111, author_name: 'Teena Burgess' }
# {title: 'Review of the New "Unbreakable Mug"', views: 202, author_name: 'Ichabod Loadbearer' },
# ]







