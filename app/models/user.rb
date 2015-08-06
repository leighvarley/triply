class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: {case_sensitive: false}
  validates :password_digest, presence: true, length: { minimum: 6 }
  has_many :recommendations, dependent: :destroy
  #has_many :comments, dependent: :destroy
  has_secure_password
end
