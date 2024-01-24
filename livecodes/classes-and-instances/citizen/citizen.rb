#initialize(first_name, last_name, age)
#can_vote? (boolean)
#full_name (String)

class Citizen
  attr_reader :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # this below and line 6 are the SAME
  # def age
  #   @age
  # end

  def can_vote?
    if age > 17
      return true
    else
      return false
    end
  end

  def full_name
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end
end

p Citizen.new('john', 'doe', 18)
