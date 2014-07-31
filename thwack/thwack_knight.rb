class Knight
  require './thwack_combat.rb'
  require './thwack_player_attr.rb'
  # require './thwack_weapons.rb'
  # require './thwack_armor.rb'
  include Combat
  include PlayerAttributes

  attr_accessor :hp,  :str, :def, :agi, :connected, :agi, :connected, :atk_mult, :def_mult, :name

  def initialize
    @hp = 400
    @str = 100
    @def = 15 
    @agi = 0.5
    @connected = false
    @atk_mult = 0
    @def_mult = 0
    @name = "Knight"
  end

end