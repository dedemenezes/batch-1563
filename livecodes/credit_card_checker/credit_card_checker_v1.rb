def credit_card_checker(card_number)
  # p card_number
  # Treat the input
  treated_card_number = card_number.gsub(' ', '')
  p treated_card_number.match(/\d{16}/)
  if treated_card_number.match?(/\d{16}/) && treated_card_number.match?(/^5/)
    "Valid Mastercard credit card number"
  elsif treated_card_number.match?(/\d{16}/) && treated_card_number.match?(/^4/)
    "Valid Visa credit card number"
  else
    "Invalid credit card number"
  end
end
