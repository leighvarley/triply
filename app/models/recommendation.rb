class Recommendation < ActiveRecord::Base
  validates :recommended_place, presence: true
  validates :body, presence: true
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :user_id, presence: true
  belongs_to :location
  validates :location_id, presence: true
end
