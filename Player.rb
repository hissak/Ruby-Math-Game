Class Player 
  attr_accessor :name, :lives
  def initialize(name, lives)
    @name = name
    @lives = lives
  end
  def lose_life
    lives - 1
  end
  def is_dead?
    lives == 0
  end
  def to_s
    "#{name}: #{lives}/3"
  end
