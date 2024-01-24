require 'rspec'
require_relative '../citizen'

describe Citizen do
  describe "#can_vote?" do
    it 'returns true if the citizen is 18 years old or more' do
      citizen = Citizen.new('John', 'Doe', 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'returns false if the citizen is 17 years old or less' do
      citizen = Citizen.new('John', 'Doe', 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it 'returns the full name correctly capitalized' do
      citizen = Citizen.new('aNdRe', 'meNEZeS', 35)
      expect(citizen.full_name).to eq('Andre Menezes')
    end
  end
end
