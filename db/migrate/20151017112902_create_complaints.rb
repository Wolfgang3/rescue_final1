class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :species
      t.boolean :status
      t.string :city_name
      t.float :latitude
      t.float :longitude
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
