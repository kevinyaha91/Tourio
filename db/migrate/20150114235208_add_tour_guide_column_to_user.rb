class AddTourGuideColumnToUser < ActiveRecord::Migration
  def change
  	add_column :users, :tour_guide, :boolean
  end
end
