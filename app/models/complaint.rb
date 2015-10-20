class Complaint < ActiveRecord::Base
belongs_to :user


has_attached_file :species_image, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "missing.jpg"
  validates_attachment_content_type :species_image, content_type: /\Aimage\/.*\Z/

end
