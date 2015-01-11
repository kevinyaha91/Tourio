class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keyword
      t.string :city
      t.string :state
      t.date :date

      t.timestamps
    end
  end
end
