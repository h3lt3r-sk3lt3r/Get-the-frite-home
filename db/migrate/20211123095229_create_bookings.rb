class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.datetime :start_date
      t.datetime :end_start
      t.references :user, null: false, foreign_key: true
      t.references :stall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
