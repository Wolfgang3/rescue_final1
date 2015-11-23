class CreateDirectsightings < ActiveRecord::Migration
  def change
    create_table :directsightings do |t|
      t.string :species
      t.boolean :status
      t.string :city_name
      t.string :user_name
      t.string :email
      t.string :phno
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
