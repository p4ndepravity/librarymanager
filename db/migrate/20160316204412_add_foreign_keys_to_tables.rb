class AddForeignKeysToTables < ActiveRecord::Migration
  def change
  	add_foreign_key :transactions, :books
  	add_foreign_key :transactions, :patrons
  	drop_table :transaction_types
  end
end
