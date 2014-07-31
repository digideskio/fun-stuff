module Combat
  require './thwack_barbarian.rb'
  require './thwack_ninja.rb'
  require './thwack_knight.rb'
  extend self

  def attack
    #algoritms for determining attack damage. Attack strength is dynamic
    #based on how many hits in a row the player has connected with.
    base_atk = 0.85
    one_hit = 1.0
    two_plus = 1.15

    if self.atk_mult == 0
      self.atk_mult += 1
      return (self.str * base_atk).round
    elsif self.atk_mult == 1
      self.atk_mult += 1
      return (self.str * one_hit).round
    elsif self.atk_mult >= 2
      self.atk_mult += 1
      return (self.str * two_plus).round
    end   
  end

  def defend(atk_points)
    #algoritms for determining true attack damage to opponent. Base attack strength is 
    #passed to function and 'watered down' based on how many hits in a row have been avoided.
    #Base attack strength is calculated in the attack function above.
    base_def = 1.0
    one_block = 0.85
    two_blocks = 0.75

    if self.def_mult == 0
        self.def_mult += 1
        return self.hp -= ((atk_points * base_def) - self.def).round
      elsif self.def_mult == 1
        self.def_mult += 1
        return self.hp -= (atk_points * one_block).round
      elsif self.def_mult >= 2
        self.def_mult += 1
        return self.hp -= (atk_points * two_blocks).round
      end
  end

  def connected?(opponent)
    #This determines if a player's attack hits or misses
    #Player's percentage chance of landing a blow is equal to their agility
    #Player's attack and defense ratings are affected by how many blows
    #in a row they've connected with or sucessfully dodged.
    connect = rand(0..1.00)
    if connect < self.agi
      opponent.def_mult = 0
      return true
    else
      self.atk_mult = 0
      opponent.def_mult +=1
      return false
    end
  end

  #Each weapon has an effect on the warrior's base abilities.
  #Equipping light armor may lower your total HP, but increase strength
  #Equipping heavy weapon will lower agility and defense, but increase strength
  def equip(weapon,armor)
    self.str += weapon.add_str
    self.agi += weapon.add_agi
    self.def += weapon.add_def

    self.str += armor.add_str
    self.agi += armor.add_agi
    self.def += armor.add_def
  end

  def choose_warrior_class(selection)
    @selection = selection
    case @selection
    when 1
      return Barbarian.new
    when 2
      return Knight.new
    when 3
      return Ninja.new
    end
  end

  class Fight

    def initialize(player1, player2)
      @current_player = player1
      @current_opponent = player2
    end

    def start
      system ("clear")
      counter = 1
       loop do 
        puts "Round #{counter}"
        if @current_player.connected?(@current_opponent) == true
          before = @current_opponent.hp
          damage = @current_player.attack

          @current_opponent.defend(damage)
          true_damage = before - @current_opponent.hp
          puts "#{@current_player.name} strikes #{@current_opponent.name}!"
          puts "********************"
          puts"Attack Damage: #{true_damage}" 

          if @current_opponent.hp <= 0
            puts "GAME OVER!!!"
          else
            puts "#{@current_opponent.name}: #{@current_opponent.hp}HP remaining"
            puts "#{@current_player.name}: #{@current_player.hp}HP remaining"
          end

          puts "********************\n\n\n"
          sleep(1)
        else
          puts "********************"
          puts "#{@current_player.name} missed!"
          puts "********************\n\n\n"
          sleep(1)
        end

        counter +=1
        break if @current_opponent.hp <= 0
        switch = @current_player
        @current_player = @current_opponent
        @current_opponent = switch

      end
        puts "************************************************"
        puts "#{@current_player.name} has won!!!"
        puts "Duration: #{counter - 1} moves"
        puts "Winner: #{@current_player.list_attr}"
        puts "Loser: #{@current_opponent.list_attr}"
        puts "************************************************\n\n\n"
    end
  end
end