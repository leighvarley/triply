class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :body
      t.integer :user_id
      t.integer :location_id
    end
  end
end
