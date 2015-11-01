class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :sighting_id
      t.string :details

      t.timestamps null: false
    end
  end
end
