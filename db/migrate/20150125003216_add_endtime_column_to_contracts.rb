class AddEndtimeColumnToContracts < ActiveRecord::Migration
  def change
  	add_column :contracts, :endtime, :time
  end
end
