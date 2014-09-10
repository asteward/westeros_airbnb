class LodgingsController < ApplicationController


  def index
    @lodgings = Lodging.all
  end

  def new
    @user = User.find(params[:id])
    @lodging = Lodging.new
  end

  def create

  end

  def show

  end


  def edit
    @user = User.find(params[:user_id])
    @lodging = Lodging.find(params[:id])
  end

  def update

  end


  def destroy

  end


private


  def lodgings_params
    params.require(:lodging).permit(:location, :cost)
  end
end
