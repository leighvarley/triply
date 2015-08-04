class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :body
      t.references :location_id
      t.references :user_id
    end
  end
end
