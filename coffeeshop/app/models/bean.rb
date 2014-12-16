class Bean
  include Mongoid::Document
  field :name, type: String
  field :roast, type: String
  field :origin, type: String
  field :quantity, type: Float

  def self.dark_roast
    Bean.where(roast:"dark")
  end
end
