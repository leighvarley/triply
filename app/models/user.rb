class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: {case_sensitive: false}
  has_many :recommendations, dependent: :destroy
  #has_many :comments, dependent: :destroy
end
