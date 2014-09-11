class Lodging < ActiveRecord::Base
  validates_presence_of :location
  validates_presence_of :name
  validates_presence_of :marketing_text
  validates_presence_of :cost
  belongs_to :user
  has_many :bookings
end

