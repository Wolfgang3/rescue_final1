class ChangeComplaintToSighting < ActiveRecord::Migration
  def change
    rename_table :complaints, :sightings
  end
end
