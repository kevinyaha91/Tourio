class AddConfirmationColumnToContracts < ActiveRecord::Migration
  def change
  	add_column :contracts, :confirmation, :boolean
  end
end
