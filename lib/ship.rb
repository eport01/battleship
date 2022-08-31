class Ship
  attr_reader :name, :length, :sunk, :hit, :health
  def initialize(name, length)
    @name = name
    @length = length
    @health = length
    @sunk = false
    @hit = 0
  end

  def health
    @health
  end

  def sunk?
    @sunk
  end

  def hit
    @health -= 1
    @sunk = true if @health == 0
    end
  end
