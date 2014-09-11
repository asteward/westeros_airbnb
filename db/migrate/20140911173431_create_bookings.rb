class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :user
      t.belongs_to :lodging

      t.float :bill
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
