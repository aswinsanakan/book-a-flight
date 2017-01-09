class AddMealIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :meal_id, :integer
  end
end
