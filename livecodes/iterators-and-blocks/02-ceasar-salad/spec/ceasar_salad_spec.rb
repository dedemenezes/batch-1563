require 'rspec'
require_relative '../ceasar_salad'

describe '#encrypt' do
  it 'returns the correct encryption' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
