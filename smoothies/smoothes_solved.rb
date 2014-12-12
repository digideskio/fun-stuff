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
    ingredients.shuffle if blender_on == true
  end

end
