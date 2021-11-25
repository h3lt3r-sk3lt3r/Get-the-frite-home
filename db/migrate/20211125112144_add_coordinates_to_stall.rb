class AddCoordinatesToStall < ActiveRecord::Migration[6.0]
  def change
    add_column :stalls, :latitude, :float
    add_column :stalls, :longitude, :float
  end
end
