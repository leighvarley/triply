class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.string :body
      t.references :recommendation
    end
  end
end
