class RescuecomptsController < ApplicationController
def new 
end

 def create
      @rescue_complaint = Rescuecompt.new
      @rescue_complaint.user_id = current_user.id
      @rescue_complaint.complaint_id = current_user.id
     @person = Rescuecompt.where(:user_id => current_user.id).first 
     if @person
        @user= @person.update(location_params)
        if @user
          flash[:alert]= "Complaint will be attened by you"

          @complaint_id=@person.complaint_id;
          @save_complaint = Complaint.where(:id => @complaint_id).first
          @save_complaint.rescuer_id=current_user.id 
          @save_complaint.status=true
          @save_complaint.save

            redirect_to root_path
        end
     else
       # @location = Location.new
       # @location.user_id = current_user.id
        @user= Rescuecompt.create(location_params)
        @user.user_id = current_user.id 

    @complaint_id=@user.complaint_id;
      if @user.save
        flash[:alert]= "This complaint will be attened by you"

        redirect_to root_path
      end


  end
end



  
  def location_params
    params.require(:rescuecompt).permit(:complaint_id)
  end
end
