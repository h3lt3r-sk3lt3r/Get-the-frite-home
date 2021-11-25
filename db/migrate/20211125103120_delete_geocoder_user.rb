class DeleteGeocoderUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float
    add_column :stalls, :address, :string
  end
end
