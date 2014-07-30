class Weapons

  attr_accessor :name, :choice
  attr_reader :add_agi, :add_str, :add_def

  def initialize(choice)
    @choice = choice

    case @choice
    when 1
      self.heavy_weapon
    when 2
      self.medium_weapon 
    when 3
      self.light_weapon
    end

  end

  def heavy_weapon
      @add_agi = -0.05
      @add_str = 15
      @add_def = -15
      @name = "Club"
  end

  def medium_weapon
    @add_agi = 0
    @add_str = 0
    @add_def = 0
    @name = "Katana"
  end

  def light_weapon
    @add_agi = 0.05
    @add_str = 15
    @add_def = -15
    @name = "Dagger"
  end

end