def encrypt(text)
  # 1. define an alphabet (Array)
  alphabet = ('A'..'Z').to_a
  # 2. split text into letters
  # 3.0 ITERATE over the letters
  encrypted_sentence = text.chars.map do |letter|
    # 3. replace them by the others letters
    # 3.1 get the letter index in the alphabet
    index = alphabet.find_index(letter)
    # check if the letter is an empty space (' ')
    if letter == ' '
      letter
    else
      # 3.2 reduce the index by 3
      # index = index - 3
      index -= 3
      # 3.3 get the new letter from the alphabet using the reduced index
      # p letter
      alphabet[index]
    end
  end

  # join and return
  encrypted_sentence.join
end
