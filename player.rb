class Player
  attr_accessor :lives, :name, :number

  def initialize(name, number)
    @name = name
    @number = number
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end
