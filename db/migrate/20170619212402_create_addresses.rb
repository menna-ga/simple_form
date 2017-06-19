class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :province
      t.string :postal_code
      t.integer :user_id

      t.timestamps
    end
  end
end
