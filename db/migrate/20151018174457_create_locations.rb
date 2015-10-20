class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
  	  t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.string :city_name
      t.timestamps null: false
    end
  end
end
