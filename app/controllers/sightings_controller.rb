class SightingsController < ApplicationController
  before_filter :authenticate_user!, :only => [ :find,:edit,:index]
  before_action :set_complaint, only: [:show, :edit, :update, :destroy]

  # GET /complaints
  # GET /complaints.json
  def index
   @sighting = Sighting.where(:user_id => current_user.id)
  @location = Location.new
 @location.user_id = current_user.id


 @complaints_filter= Sighting.where("user_id != ?",current_user.id).where("status != ?",true)

 @complaints_filter2= Directsighting.where("status != ?",true)

  @complaints_attending= Sighting.where(:rescuer_id => current_user.id)
  end

  def notified_complaints
  @sighting = Sighting.where(:user_id => current_user.id)
  end

  # GET /complaints/1
  # GET /complaints/1.json
  def show
     @rescue_complaint = Rescuecompt.new
  @rescue_complaint.user_id = current_user.id
          #@user = Carpool.find(params[:format]).user
    @sighting_id=Sighting.find(params[:id]).id
    @latitude = Sighting.find(params[:id]).latitude
    @longitude = Sighting.find(params[:id]).longitude
    @city_name = Sighting.find(params[:id]).city_name

  end

  # GET /complaints/new
  def new
    @sighting = Sighting.new
    @user = User.new
  end

  # GET /complaints/1/edit
  def edit
  end

  # POST /complaints
  # POST /complaints.json
  def create
    @user = User.new(user_params)
    @sighting = Sighting.new(complaint_params)
    #@sighting= @sighting.update(complaint_params)
    @sighting.user_id=current_user.id
    respond_to do |format|
      if @sighting.save
        format.html { redirect_to @sighting, notice: 'Sighting was successfully created.' }
        flash[:alert]= "Your location has been updated"
    
        format.json { render :show, status: :created, location: @sighting }
      else
        format.html { render :new }
        format.json { render json: @sighting.errors, status: :unprocessable_entity }
      end
    end
    @user.password = "12345678"
    @user.save
    flash[:alert]= "Yfdf updated"
    @sighting.user_id = current_user.id
  end

  # PATCH/PUT /complaints/1
  # PATCH/PUT /complaints/1.json
  def update
    respond_to do |format|
      if @sighting.update(complaint_params)
        format.html { redirect_to @sighting, notice: 'Sighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @sighting }
      else
        format.html { render :edit }
        format.json { render json: @sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaints/1
  # DELETE /complaints/1.json
  def destroy
    @sighting.destroy
    respond_to do |format|
      format.html { redirect_to sightings_url, notice: 'Sighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def snakes_info
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @sighting = Sighting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_params
      params.require(:sighting).permit(:species, :status, :city_name, :species_image, :latitude, :longitude,:user_id)
    end

      # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:sighting).permit(:email)
    end
end
