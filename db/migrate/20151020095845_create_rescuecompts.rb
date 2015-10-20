class CreateRescuecompts < ActiveRecord::Migration
  def change
    create_table :rescuecompts do |t|
      t.integer :user_id
      t.integer :complaint_id
      t.string :status

      t.timestamps null: false
    end
  end
end
