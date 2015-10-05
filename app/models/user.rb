class User < ActiveRecord::Base
  #convert email to lowercase before saving to database so that validation will work correctly.
  before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: {case_sensitive: false}
  #works with password digest to hash password with bcrypt to securely check password
  has_secure_password
  validates :password_digest, presence: true, length: { minimum: 6 }, allow_nil: true
  has_many :recommendations, dependent: :destroy
  #has_many :comments, dependent: :destroy
end
