class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.text :address

      t.timestamps null: false
    end
  end
end
