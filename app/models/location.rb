class Location # < ActiveRecord::Base

  def self.all(location_name)
    Lodging.where(location: location_name)
  end

end
