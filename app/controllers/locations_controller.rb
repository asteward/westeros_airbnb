class LocationsController < ApplicationController

  def index
    @lodgings = Location.all(Lodging.find(params[:lodging_id]).location)
  end

end
