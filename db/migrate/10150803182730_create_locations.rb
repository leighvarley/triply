class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city_name
      t.string :state_name
      #t.string :country_name - will be used in feature when have international locations
      t.string :location_description
      #t.string :photo_url - future feature
    end
  end
end
