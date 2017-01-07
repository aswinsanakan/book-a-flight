class CreateAirlineTickets < ActiveRecord::Migration
  def change
    create_table :airline_tickets do |t|
      t.integer :airline_id
      t.integer :tickets_issued
      t.integer :tickets_left

      t.timestamps null: false
    end
  end
end
