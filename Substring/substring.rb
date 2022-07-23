def substrings(string, dictionary)
  words = string.downcase.split(" ")
  words.reduce(Hash.new(0)) {|acc, word|
    dictionary.each{ |d_word|
      if word.include?(d_word)
        acc[d_word] += 1
      end
    }
    acc
  }
end




dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

words = ["below" , "Howdy partner, sit down! How's it going?"]


words.each do |word|
  puts substrings(word, dictionary)
end
