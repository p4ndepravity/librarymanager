class RenameIdColumnsOnAllTables < ActiveRecord::Migration
  def change
  		rename_column :books, :genreid, :genre_id
  		rename_column :transactions, :patronid, :patron_id
  		rename_column :transactions, :bookid, :book_id
  		rename_column :transactions, :transactionTypeid, :transactionType_id
  end
end
