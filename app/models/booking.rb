class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :lodging

  before_save :calc_bill

  def count_nights
    (end_date - start_date).to_i
  end

private

  def calc_bill
    self.bill = count_nights * Lodging.find(lodging_id).cost
  end
end
