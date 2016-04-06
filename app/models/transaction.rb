class Transaction < ActiveRecord::Base
	belongs_to :book
	belongs_to :patron
	belongs_to :transaction_type
  validates :book_id, presence: true
  validates :patron_id, presence: true
  validates :transaction_type_id, presence: true
end
