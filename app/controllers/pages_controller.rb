class PagesController < ApplicationController
	def index
    @transactions = Transaction.all
    @transaction = Transaction.new
    @books = Book.all
    @books_out = Book.all_checked_out
    @soon_range = (Time.now..Time.now + 2.days)
	end
end
