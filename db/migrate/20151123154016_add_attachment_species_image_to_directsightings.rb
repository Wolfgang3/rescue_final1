class AddAttachmentSpeciesImageToDirectsightings < ActiveRecord::Migration
  def self.up
    change_table :directsightings do |t|
      t.attachment :species_image
    end
  end

  def self.down
    remove_attachment :directsightings, :species_image
  end
end
