class AddAttachmentSpeciesImageToComplaints < ActiveRecord::Migration
  def self.up
    change_table :complaints do |t|
      t.attachment :species_image
    end
  end

  def self.down
    remove_attachment :complaints, :species_image
  end
end
