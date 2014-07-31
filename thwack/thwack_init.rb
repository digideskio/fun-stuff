module Fight

require './thwack_barbarian.rb'
require './thwack_ninja.rb'
require './thwack_knight.rb'
require './thwack_combat.rb'
require './thwack_weapons.rb'
require './thwack_armor.rb'

extend self

def start
  splash_screen
  
  player1=nil
  player2=nil
  i=1

  2.times do |x|
    puts "\nChoose Warrior 1" if i == 1
    puts "1-Barbarian, 2-Knight, 3-Ninja"
    warrior_choice = gets.chomp.to_i
    warrior = Combat.choose_warrior_class(warrior_choice)
    puts "You chose #{warrior.name}"

    puts "\nChoose Weapon"
    puts "1-Heavy, 2-Medium, 3-Light"
    print "-->"
    weapon_choice = gets.chomp.to_i
    weapon = Weapons.new(weapon_choice)
    puts "You chose #{weapon.name}"

    puts "\nChoose Armor"
    puts "1-Heavy, 2-Medium, 3-Light"
    print "-->"
    armor_choice= gets.chomp.to_i
    armor = Armor.new(armor_choice)
    puts "You chose #{armor.name}"

    warrior.equip(weapon,armor)

    if i == 1
      i+=1
      player1 = warrior
    else
      player2 = warrior
    end 

    puts "\n\n\nChoose Warrior2"

  end

  battle = Combat::Fight.new(player1, player2)
  battle.start

end

def self.splash_screen
  system('clear')

  puts "****************************************"
  sleep(0.25)
  puts "****************************************"
  sleep(0.25)
  puts "****************************************"
  sleep(0.25)
  print "**"
  print "WELCOME TO THWACK".center(36)
  puts "**"
  puts "****************************************"
  sleep(0.25)
  puts "****************************************"
  sleep(0.25)
  puts "****************************************"
  sleep(0.25)

end



end
