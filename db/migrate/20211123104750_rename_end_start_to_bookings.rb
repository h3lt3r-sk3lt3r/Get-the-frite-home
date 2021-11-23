class RenameEndStartToBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :end_start, :end_date
  end
end
