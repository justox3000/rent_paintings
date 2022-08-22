class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.references :user_id, null: false, foreign_key: true
      t.references :painting_id, null: false, foreign_key: true
      t.references :review_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
