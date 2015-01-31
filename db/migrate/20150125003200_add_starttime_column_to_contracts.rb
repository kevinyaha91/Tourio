class AddStarttimeColumnToContracts < ActiveRecord::Migration
  def change
  	add_column :contracts, :starttime, :time
  end
end
