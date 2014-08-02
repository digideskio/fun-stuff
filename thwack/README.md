# THWACK

A very simple fighting game.

You will select two warriors, and equip them with a weapon and armor.

###Warrior Classes
    * Barbarian - Strong, but not agile
    * Knight - Blend of strength and agility
    * Ninja - High agility, but low strength

###Weapon Classes
    * Club - Heavy damage, decreases agility
    * Katana - Medium damage, no effect on agility
    * Dagger - Low damage, increases agility

###Armor Classes
    * Iron Armor - Decreases agility, increases defense
    * Bronze Armor - No effect on agility or defense
    * Leather Armor - Increases agility, decreases defense


####Player Attributes
    HP - Hit points/health
    STR - Strength/Attack Damage
    DEF - Defense
    AGI - Agility (affects chance of an attack connecting)
    

###Gameplay

    The basic formula is DMG = (ATK - DEF). The game continues until one player has been killed.



####Files
    * thwack_init.rb = Main gameplay script
    * thwack_combat.rb = fight and defense algorithms

    * thwack_armor.rb = Armor classes
    * thwack_weapon.rb = Weapon classes

    * thwack_barbarian.rb = Barbarian warrior classes
    * thwack_knight.rb = Knight warrior classes
    * thwack_ninja.rb = Ninja warrior classes