class AddStatusDirectSightings < ActiveRecord::Migration
  def change
  	change_column("directsightings","status", :boolean,:default => false) 
  end
end
