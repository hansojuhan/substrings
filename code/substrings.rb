# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
#
# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#
# > substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }
#
# Next, make sure your method can handle multiple words:
# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" # => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

# dictionary = ["below","low","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => { "below" => 1, "low" => 1 }

# Optimized
def substrings(word, dictionary)
  # Initiate result
  result = {}

  # Loop over the dictionary
  dictionary.each do |dictionary_element|

    # Loop over each word in the input
    word.split().each do |word_element|

      if word_element.downcase.include? dictionary_element.downcase
        result[dictionary_element.downcase] = 0 unless result.include? dictionary_element.downcase
        result[dictionary_element.downcase] += 1
      end

    end
  end

  p result
end

# Initial solution
# def substrings(word, dictionary)
#   # Iterate over the dictionary_elements in the dictionary
#   # Check whether dictionary dictionary_element is a substring of the word
#   # If yes, add to a hash with key as the word and value as how many times found
  
#   # Initiate input variables
#   input_word = word.split()
#   input_dictionary = dictionary

#   dictionary.split() if kind_of? String

#   # Initiate result
#   result = {}

#   # Loop over the dictionary
#   input_dictionary.each do |dictionary_element|

#     # Loop over each word in the input
#     input_word.each do |word_element|

#       p "if '#{dictionary_element.downcase}' includes '#{word_element.downcase}'?"
#       if word_element.downcase.include? dictionary_element.downcase
#         result[dictionary_element.downcase] = 0 unless result.include? dictionary_element
#         result[dictionary_element.downcase] += 1
#       end

#     end
#   end

#   p result
# end