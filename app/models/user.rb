class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   has_many :complaints
   has_one :location
   has_attached_file :avatar, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "missing.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
