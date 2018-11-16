class AddLocationToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :location, :string
  end
end
