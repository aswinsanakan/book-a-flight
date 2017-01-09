class DeleteMealIdFromTickets < ActiveRecord::Migration
  def change
  	remove_column :tickets, :meal_id
  end
end
