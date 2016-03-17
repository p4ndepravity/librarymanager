class Patron < ActiveRecord::Base
	has_many :transactions
	has_many :books, through: :transactions
end
