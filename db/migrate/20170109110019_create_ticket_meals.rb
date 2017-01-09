class CreateTicketMeals < ActiveRecord::Migration
  def change
    create_table :ticket_meals do |t|
      t.integer :ticket_id
      t.integer :meal_id

      t.timestamps null: false
    end
  end
end
