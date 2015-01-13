class User
  include Mongoid::Document
  field :name,            type: String
  field :email,           type: String
  field :password_digest, type: String

  mount_uploader :image, AvatarUploader
  attr_reader :password

  def password=(unencrypted_password)
    unless unencrypted_password.empty?
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(unencrypted_password)
    end
  end

  def authenticate(unencrypted_password)
    user_password = self.password_digest
    if BCrypt::Password.new(user_password) == unencrypted_password
      return self
    else
      return false
    end
  end
end
