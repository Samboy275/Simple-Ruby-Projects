class String
  def alpha?
    !!match(/^[[:alpha:]]+$/)
  end
end

def ceaser_cipher(text, key)
  cipher = text.chars.map{ |char|
    if char.alpha?
      cipher_char = char.downcase.ord + key
      if cipher_char > 122
        cipher_char -= 26
      end
      if char == char.upcase
        char = cipher_char.chr.upcase
      else
        char = cipher_char.chr.downcase
      end
    else
      char = char
    end
  }
  cipher = cipher.join
  cipher
end


def tests(text, key, solution)
  answer = ceaser_cipher(text, key)

  if answer == solution
    puts "passed test"
  else
    puts "failed test"
    puts answer
  end
end

test_cases = {
  case1: {plain_text: "ABCDEFGHIJKLMNOPQRSTUVWXYZ", key: 23, cipher_text: "XYZABCDEFGHIJKLMNOPQRSTUVW"},
  case2: {plain_text: "ATTACKATONCE", key: 4, cipher_text: "EXXEGOEXSRGI"},
  case3: {plain_text: "abcdefghijklmnopqrstuvwxyz", key: 3, cipher_text: "defghijklmnopqrstuvwxyzabc"},
  case4: {plain_text: "testing for spaces $#%^ symbols and CAPS!!!", key: 12, cipher_text: "fqefuzs rad ebmoqe $#%^ ekynaxe mzp OMBE!!!"}
  case5: {plain_text: "What   a string!", key: 5, cipher_text: "Bmfy f xywnsl!"}
}


test_cases.each { |key, data|
  tests(data[:plain_text], data[:key], data[:cipher_text])
}

