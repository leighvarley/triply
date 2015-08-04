class Comment < ActiveRecord::Base
  belongs_to :recommendations
  belongs_to :user
end
