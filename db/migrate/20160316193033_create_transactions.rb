class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :patronid
      t.integer :bookid
      t.datetime :transactionDate
      t.integer :transactionTypeid

      t.timestamps null: false
    end
  end
end
