class AddContracteeratingToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :contracteerating, :integer
  end
end
