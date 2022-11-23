
# VIDEO: Most Frequent Letter
# in list Basic Hash
# Description
# VIDEO: Algorithm Ladder #03: Basic Hash

# Given a string, find the most commonly occurring letter.

input =  "peter pieper picfffffffffked a peck of pickled peppers"
# Output: “p”

def most_frequent(string)
  most_occurring_letter_count = 0
  high_letter = ""
  out_hash = Hash.new
  string.each_char do |char|
    if out_hash.has_key?(char)
      out_hash[char] += 1
    else
      out_hash[char] = 1
    end
  end
  out_hash.each do |key, value|
    if value > most_occurring_letter_count
      most_occurring_letter_count = value
      high_letter = key
    end
  end
  return high_letter
end

# p most_frequent(input)

# Count Votes
# in list Basic Hash
# Description
# Given an array of strings, return a hash that provides of a count of how many times each string occurs.

input = ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# Output: {"Dewey" => 6, "Truman" => 5}

# Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

def element_counter(array)
  out_hash = {"Dewey" => 0, "Truman" => 0}
  array.each do |vote|
    if vote == "Dewey"
      out_hash["Dewey"] += 1
    else
      out_hash["Truman"] += 1
    end
  end
  return out_hash
end

# p element_counter(input)





# Order the Whole Menu in list Basic Hash
# Description
# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each food, return the amount someone would pay if they'd order one of each food from the entire menu.

input = {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}

# Output: 14

# Explanation: If someone would order one of everything on the menu, they'd pay a total of 14 (the sum of all the hash's values).

def summer(hash)
  total = 0
  hash.each do |key, value|
    total += value
  end
  return total
end

# p summer(input)





# Popular Posts
# in list Basic Hash
# Description
# Given an array of hashes that represent a list of social media posts, return a new array that only contains the posts that have at least 1000 likes.

input = [
  {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
  {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
  {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
]

# Output: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]

def over1k(array)

  return array.select { |entry| entry[:likes] > 1000 }

end

# p over1k(input)


# RNA Transcription
# in list Basic Hash
# Description
# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

input = 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

def rna_converter(string)
  out_array = []
  translate_hash = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  string
    .chars
    .map{|letter| translate_hash[letter]}
    .join



  # string_array = string.split("")
  # string_array.each do |letter|
  #   translate_hash.each do |key, value|
  #     if letter == key.to_s
  #       out_array << value
  #     end
  #   end
  # end
  # return out_array.join()
end

p rna_converter(input)



# Complete the Data I
# in list Basic Hash
# Description
# Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

# [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# And this hash of users (the key is the id number and the value is the user's real name):

# users = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]






# Anagrams ->
# in list Basic Hash
# Description
# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

str1 = "silent"
str2 = "listen"
# Output: true

stra = "frog"
strb = "bear"

strs = "squeegee"
strt = "queegees"
# Input: “frog”, “bear”
# Output: false

def anagram_test(str1, str2)
  test_hash_a = {}
  test_hash_b = {}
  str1.each_char do |letter1|
    if test_hash_a[letter1]
      test_hash_a[letter1] += 1
    else
      test_hash_a[letter1] = 1
    end
  end

  str2.each_char do |letter2|
    if test_hash_b[letter2]
      test_hash_b[letter2] += 1
    else
      test_hash_b[letter2] = 1
    end
  end

  test_hash_a.each do |key, _value|
    if test_hash_a[key] != test_hash_b[key]
      return false
    end
  end

  true
end

# p anagram_test(str1, str2)
# p anagram_test(stra, strb)
# p anagram_test(strs, strt)
