class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :recommended_place
      t.string :name_of_user
      t.string :body
      t.references :location
      t.references :user
    end
  end
end
