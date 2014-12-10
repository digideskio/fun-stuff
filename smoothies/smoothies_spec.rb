require_relative 'smoothies'

describe Blender do
  before(:each) do
    @blender = Blender.new
  end

  it 'Should be off when created' do
    expect(@blender.blender_on).to be false
  end

  it 'Should have a method to switch it on' do
    @blender.switch_on
    expect(@blender.blender_on).to eq(true)
  end

  it 'Should have a method to switch it off' do
    @blender.blender_on = true
    @blender.switch_off
    expect(@blender.blender_on).to be false
  end

  describe '#blend' do
    ingredients = ['carrot', 'celery', 'orange', 'banana', 'green apple']

    it 'Should return a blended string' do
      check_random = false
      @blender.switch_on
      5.times do
        sample_a = @blender.blend(ingredients)
        sample_b = @blender.blend(ingredients)
        if sample_a == sample_b
          check_random = true
        end
      end
      expect(check_random).to be false
    end

    it 'Should not have spaces in the returned string' do
      @blender.switch_on
      expect(@blender.blend(ingredients).include?(' ')).to be false
    end

    it 'Does not blend if switched off' do
      @blender.blender_on = false
      expect(@blender.blend(ingredients)).to eq(nil)
    end
  end
end