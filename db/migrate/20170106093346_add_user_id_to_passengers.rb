class AddUserIdToPassengers < ActiveRecord::Migration
  def change
    add_column :passengers, :user_id, :integer
  end
end
