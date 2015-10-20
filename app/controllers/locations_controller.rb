class LocationsController < ApplicationController
	
def new 
end

  def create

     @person = Location.where(:user_id => current_user.id).first
    
     if @person
     	  @user= @person.update(location_params)
     	  if @user
          flash[:alert]= "Your location has been updated"
     	      redirect_to root_path
     	  end
     else
       # @location = Location.new
       # @location.user_id = current_user.id
        @user= Location.create(location_params)
        @user.user_id = current_user.id 


          if @user.save
            flash[:alert]= "Your location has been updated"
     	      redirect_to root_path
     	    end
      end
	end


   def map
        @user = Complaint.find(params[:format]).user
        @latitude = Location.where(:user_id => @user.id).first.latitude
        @longitude = Location.where(:user_id => @user.id).first.longitude
   
   end


	private

	  def location_params
	  	params.require(:location).permit(:latitude, :longitude,:city_name)
	  end
end
