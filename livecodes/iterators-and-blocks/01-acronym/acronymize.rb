def acronymize(sentence)
  # 1. check if the sentence is empty
  # 2. if it is empty, return an empty string
  if sentence.empty?
    ''
  end
  # 1. split sentence into individual words
  words = sentence.split
  # 2.0 ITERATE OVER THE WORDS ARRAY
  # any_name_that_you_want = [] (used before switching to #map)

  any_name_that_you_want = words.map do |word|
    # 2. FOR EACH word take the first letter
    # 3. upcase the first letter
    first_letter = word[0].upcase
    # any_name_that_you_want << first_letter
  end
  any_name_that_you_want.join
  # Join them all and return
end
