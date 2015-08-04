class User < ActiveRecord::Base
  has_secure_password
  has_many :recommendations, dependent: :destroy
  has_many :comments, dependent: :destroy
end
