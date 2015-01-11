class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.text :bio
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
