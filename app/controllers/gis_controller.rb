class GisController < ApplicationController
  def show
  	@sighting = Sighting.all
  end
  def show2
  	@sighting = Sighting.all
  end
end
