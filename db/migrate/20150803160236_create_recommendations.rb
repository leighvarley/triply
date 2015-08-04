class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :recommended_place
      t.string :body
      t.references :location
      t.references :user
    end
  end
end
