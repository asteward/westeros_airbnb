require 'rails_helper'


describe Location do

    it "Returns all locations with identical names" do

      ['Winterfell', 'Pentos', 'Winterfell', 'Casterly Rock', 'Winterfell'].each do |location|
        Lodging.create(:user_id => 1, :location => location, :cost => 100.0,
                        :name => 'BLAH BLAH BLAH', :marketing_text => "BUY ME!")

        end

      expect(Location.all('Winterfell').length).to eq 3
  end
end
