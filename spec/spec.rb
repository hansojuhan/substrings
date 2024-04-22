require 'spec_helper'
require_relative '../code/substrings.rb'

RSpec.describe 'Substrings' do

  describe 'Substrings' do

    it 'returns substrings and amount of occurrence' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expected_result = {"below"=>1, "low"=>1}
      input_word = "below"

      expect(substrings(input_word, dictionary)).to eq(expected_result)
    end

    it 'amount of occurrence is bigger, if found multiple times' do
      dictionary = ["below","down","go","going","horn","how","howdy","how","how","it","i","low","own","part","partner","sit"]
      expected_result = {"howdy"=>1, "how"=>3}
      input_word = "howdy"

      expect(substrings(input_word, dictionary)).to eq(expected_result)
    end   

    it 'can handle multiple words' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expected_result = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      input_word = "Howdy partner, sit down! How's it going?"

      expect(substrings(input_word, dictionary)).to eq(expected_result)
    end   
  end
end
