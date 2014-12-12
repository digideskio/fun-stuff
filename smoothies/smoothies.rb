# create a class called Blender
# # It should have a method that takes an array of ingredients and returns a
# # mixed string of characters.
# # # Give the blender an on and off switch and only allow the blender to
# function when it's on.
# # # FOR SAFETY'S SAKE When you create a new blender by default it should be
# off.
# # # Blend the the smoothie array

class Blender

  attr_accessor :blender_on

  def initialize
    @blender_on = false
  end

  def switch_on
    @blender_on = true
  end

  def switch_off
    @blender_on = false
  end

  def blend(ingredients)
    if blender_on
      ingredients.shuffle
    end

    blender_on ? ingredients.shuffle : nil

    ingredients.shuffle unless (blender_on == false)
    ingredients.shuffle unless !blender_on
    ingredients.shuffle if blender_on
    ingredients.shuffle if blender_on == true


  end
end














