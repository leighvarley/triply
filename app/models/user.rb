class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password_digest, presence: true, length: { minimum: 6 }, allow_nil: true
  has_many :recommendations, dependent: :destroy
  #has_many :comments, dependent: :destroy
end
