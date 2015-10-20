class ChangeStatus < ActiveRecord::Migration
  def change
  	change_column("complaints","status", :boolean,:default => false) 
  end
end
