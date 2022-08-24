class AddColumnsToBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.references :user, null: false, foreign_key: true
      t.references :painting, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
