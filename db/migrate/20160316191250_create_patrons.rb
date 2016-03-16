class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :lastName
      t.string :firstName
      t.string :streetAddress
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
