class LodgingsController < ApplicationController
  before_action :all_lodgings, only: :index

  # removed index because ^^^^ does what it did, and view is auto-rendered

  def show
    @lodging = Lodging.find(params[:id])
  end

  #### AJAX THIS UP!

  def new
    @user = current_user
    @lodging = @user.lodgings.new
  end

  def create
    @lodging = current_user.lodgings.new(lodgings_params)
    if @lodging.save
      respond_to { |format| format.js }
    else
      render('new')
    end
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
    params.require(:lodging).permit(:location, :cost, :name, :marketing_text)
  end

  def all_lodgings
    @lodgings = Lodgings.all
  end
end
