class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      #t.integer :user_id   - don't need user_id or location_id b/c comment belongs to recommendation and recommendation has this info - pull it thru recommendation_id
      t.integer :recommendation_id
      #t.references: recommendation, index: true, foreign_key: true   - does same thing as t.integer :recommendation_id
    end
  end
end
