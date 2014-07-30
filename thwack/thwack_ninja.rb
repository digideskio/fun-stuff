class Ninja
  require './thwack_combat.rb'
  require './thwack_player_attr.rb'
  include Combat
  include PlayerAttributes

  attr_accessor :hp,  :str, :def, :agi, :connected, :agi, :connected, :atk_mult, :def_mult, :name
  
  def initialize
    @hp = 325 #hit points
    @str = 50  #base attack
    @def = 75 #base defense
    @agi = 0.75 #chance that an attack lands
    @connected = false #did the player's attack connect?
    @atk_mult = 0 #increases when player connects on consecutive turns
    @def_mult = 0
    @name = "Ninja"
  end

end