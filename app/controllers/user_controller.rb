class UserController < ApplicationController
  def index
  end

  def view
  	@user= User.find(params[:id])
  end
end
