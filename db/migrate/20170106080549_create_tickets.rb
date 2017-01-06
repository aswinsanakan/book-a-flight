class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :booking_number
      t.integer :passenger_id
      t.integer :airline_id
      t.string :class
      t.date :date_journey
      t.string :status

      t.timestamps null: false
    end
  end
end
