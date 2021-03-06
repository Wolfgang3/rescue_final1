class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   has_many :sightings
   has_one :location
   has_attached_file :avatar, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "def.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

TEMPERATURES = ['hot', 'medium', 'cold']
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
