class Book < ActiveRecord::Base
	has_many :transactions
	has_many :patrons, through: :transactions
	belongs_to :genre
end
