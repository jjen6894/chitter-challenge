require 'bcrypt'

class User
  
  include DataMapper::Resource

  property :id, Serial
  property :email, String, :format => :email_address
  property :name, String
  property :username, String
  property :password_digest, Text

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end
end
