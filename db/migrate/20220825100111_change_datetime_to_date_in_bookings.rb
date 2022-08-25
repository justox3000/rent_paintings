class ChangeDatetimeToDateInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :startdate, :date
    change_column :bookings, :enddate, :date
  end
end
