require 'rspec'
require_relative '../acronymize'

describe '#acronymize' do
  it 'returns an empty string when passed an empty string' do
    expect(acronymize("")).to eq("")
  end

  it 'returns the correct acronym when passed an up cased sentence' do
    expect(acronymize("AWAY FROM KEYBOARD")).to eq("AFK")
  end
  it 'returns the correct acronym when passed an lower cased sentence' do
    expect(acronymize("working from home")).to eq('WFH')
  end
  # puts acronymize("working from home") == "WFH"

end
