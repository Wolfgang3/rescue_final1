class DirectsightingsController < ApplicationController
  before_action :set_directsighting, only: [:show, :edit, :update, :destroy]

  # GET /directsightings
  # GET /directsightings.json
  def index
    @directsightings = Directsighting.all
  end

  # GET /directsightings/1
  # GET /directsightings/1.json
  def show
    
     @sighting=Directsighting.find(params[:id])
    @sighting_id=Directsighting.find(params[:id]).id
    @latitude = Directsighting.find(params[:id]).latitude
    @longitude = Directsighting.find(params[:id]).longitude
    @city_name = Directsighting.find(params[:id]).city_name
    @user_name = Directsighting.find(params[:id]).user_name
    @email = Directsighting.find(params[:id]).email
    @phno = Directsighting.find(params[:id]).phno
  end

  # GET /directsightings/new
  def new
    @directsighting = Directsighting.new
  end

  # GET /directsightings/1/edit
  def edit
  end

  # POST /directsightings
  # POST /directsightings.json
  def create
    @directsighting = Directsighting.new(directsighting_params)

    respond_to do |format|
      if @directsighting.save
        format.html { redirect_to @directsighting, notice: 'Directsighting was successfully created.' }
        format.json { render :show, status: :created, location: @directsighting }
      else
        format.html { render :new }
        format.json { render json: @directsighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directsightings/1
  # PATCH/PUT /directsightings/1.json
  def update
    respond_to do |format|
      if @directsighting.update(directsighting_params)
        format.html { redirect_to @directsighting, notice: 'Directsighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @directsighting }
      else
        format.html { render :edit }
        format.json { render json: @directsighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directsightings/1
  # DELETE /directsightings/1.json
  def destroy
    @directsighting.destroy
    respond_to do |format|
      format.html { redirect_to directsightings_url, notice: 'Directsighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directsighting
      @directsighting = Directsighting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directsighting_params
      params.require(:directsighting).permit(:species, :status, :city_name, :user_name, :email, :phno, :latitude, :longitude,:species_image)
    end
end
