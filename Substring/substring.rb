# frozen_string_literal: true

def substrings(string, dictionary)
  words = string.downcase.split(' ')
  words.each_with_object(Hash.new(0)) do |word, acc|
    dictionary.each do |d_word|
      acc[d_word] += 1 if word.include?(d_word)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

words = ['below', "Howdy partner, sit down! How's it going?"]

words.each do |word|
  puts substrings(word, dictionary)
end
