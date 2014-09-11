
require 'rails_helper'

describe Booking do
  it 'Correctly computes the total bill for a stay' do
    lodging = Lodging.create(:user_id => 1,
                            :location => "somewhere",
                            :cost => 200.0,
                            :name => "a place",
                            :marketing_text => "Stay here")
    booking = Booking.create(:user_id => 2,
                             :lodging_id => lodging.id,
                             :start_date => Date.parse('2014-9-11'),
                             :end_date => Date.parse('2014-9-13'))

    expect(booking.bill).to eq 400

  end

end
