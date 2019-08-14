class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :zipcode
      t.string :pref
      t.string :city
      t.string :street
      t.string :building

      t.timestamps
    end
  end
end
