class Recommendation < ActiveRecord::Base
  validates :recommended_place, presence: true
  validates :body, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :location
end
