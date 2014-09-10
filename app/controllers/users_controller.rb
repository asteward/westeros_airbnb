class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @lodging = Lodging.new
  end

end
