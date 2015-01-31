class AddContractorratingToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :contractorrating, :integer
  end
end
