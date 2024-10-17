LOWERCASE_ABC = ('a'..'z').to_a
UPPERCASE_ABC = ('A'..'Z').to_a

def caesar_cipher(phrase, shift_value)
 phrase.split.map do |word|
  shift_letters_in_word(word, shift_value)
 end.join(' ')
end

def shift_letters_in_word(word, shift_value)
  word.chars.map do |char|
    lowercase_index = LOWERCASE_ABC.index(char)
    if lowercase_index.nil?
      uppercase_index = UPPERCASE_ABC.index(char)
      uppercase_index.nil? ? char : UPPERCASE_ABC[(uppercase_index + shift_value)%UPPERCASE_ABC.length]
    else
      LOWERCASE_ABC[(lowercase_index + shift_value)%LOWERCASE_ABC.length]
    end
  end.join
end

caesar_cipher("Go on. Test some rAnd4M text!", 34)
