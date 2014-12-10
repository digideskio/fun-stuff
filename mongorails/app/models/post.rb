class Post
  include Mongoid::Document

  field :title
  field :content
  validates :title, :content, presence: true
end
