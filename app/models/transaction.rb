class Transaction < ActiveRecord::Base
	belongs_to :book
	belongs_to :patron
	belongs_to :transaction_type
end
