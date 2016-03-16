class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :authorLastName
      t.string :authorFirstName
      t.integer :rating
      t.string :isbn10
      t.integer :genreid

      t.timestamps null: false
    end
  end
end
