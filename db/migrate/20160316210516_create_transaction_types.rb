class CreateTransactionTypes < ActiveRecord::Migration
  def change
    rename_column :transactions, :transactionType_id, :transaction_type_id
    create_table :transaction_types do |t|
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :transactions, :transaction_types
  end
end
