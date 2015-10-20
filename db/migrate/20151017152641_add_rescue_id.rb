class AddRescueId < ActiveRecord::Migration
  def change
  	add_column :complaints, :rescuer_id, :integer
  end
end
