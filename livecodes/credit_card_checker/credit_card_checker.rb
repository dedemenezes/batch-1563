def credit_card_checker(card_number)
  # p card_number
  # Treat the input
  treated_card_number = card_number.gsub(' ', '')
  match_data = treated_card_number.match(/(\d)\d{15}/)
  if match_data
    match_data[1] == '5' ? "Valid Mastercard credit card number" : "Valid Visa credit card number"
  else
    "Invalid credit card number"
  end
end
