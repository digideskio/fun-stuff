class Barbarian
  require './thwack_combat.rb'
  require './thwack_player_attr.rb'
  # require './thwack_weapons.rb'
  # require './thwack_armor.rb'
  include Combat
  include PlayerAttributes

  attr_accessor :hp,  :str, :def, :agi, :connected, :agi, :connected, :atk_mult, :def_mult, :name

  def initialize
    @hp = 550 #hit points
    @str = 115  #base attack
    @def = 10 #base defense
    @agi = 0.40 #chance that an attack lands, in this case 25%
    @connected = false #did the player's attack connect?
    @atk_mult = 0 #increases when player connects on consecutive turns
    @def_mult = 0
    @name = "Barbarian"
  end

end