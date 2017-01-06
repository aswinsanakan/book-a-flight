class RemoveCompanyFromAirlines < ActiveRecord::Migration
  def change
    remove_column :airlines, :company, :string
  end
end
