def credit_card_checker(card_number)
  # p card_number
  # Treat the input
  treated_card_number = card_number.gsub(' ', '')
  match_data = treated_card_number.match(/(\d)\d{15}/)
  #  p match_data[1]
  if match_data
    return "Valid Mastercard credit card number" if match_data[1] == '5'
    return "Valid Visa credit card number" if match_data[1] == '4'
  else
    "Invalid credit card number"
  end
end
