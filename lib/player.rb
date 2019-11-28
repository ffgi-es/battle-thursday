class Player
  attr_reader :name, :health

  def initialize name
    @name = name
    @health = 100
  end
  def reduce_health amount
    @health -= amount
  end
end
