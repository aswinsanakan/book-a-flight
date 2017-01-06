class AddModelToAirlines < ActiveRecord::Migration
  def change
    add_column :airlines, :model, :string
  end
end
