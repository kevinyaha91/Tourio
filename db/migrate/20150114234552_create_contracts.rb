class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :contractor_id
      t.integer :contractee_id
      t.date :date
      t.time :time
      t.string :location

      t.timestamps
    end
  end
end
