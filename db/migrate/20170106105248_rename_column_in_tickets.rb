class RenameColumnInTickets < ActiveRecord::Migration
  def change
  	rename_column :tickets, :class, :travel_class
  	rename_column :airlines, :model, :flight_number
  end
end
