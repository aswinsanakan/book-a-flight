class CreateCancelledTickets < ActiveRecord::Migration
  def change
    create_table :cancelled_tickets do |t|
      t.integer :ticket_id
      t.date :date_cancel

      t.timestamps null: false
    end
  end
end
