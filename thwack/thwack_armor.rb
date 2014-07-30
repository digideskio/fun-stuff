class Armor

  attr_accessor :name, :choice
  attr_reader :add_agi, :add_str, :add_def

  def initialize(choice)
    @choice = choice

    case @choice
    when 1
      self.heavy_armor
    when 2
      self.medium_armor
    when 3
      self.light_armor
    end
  end

  def heavy_armor
    @add_agi = -0.05
    @add_str = -10
    @add_def = 10
    @name= 'Bronze Armor'
  end

  def medium_armor
    @add_agi = 0.0
    @add_str = 0.0
    @add_def = 0.0
    @name= 'Bronze Armor'
  end

  def light_armor
    @add_agi = 0.05
    @add_str = 10
    @add_def = -10
    @name= 'Bronze Armor'
  end


end