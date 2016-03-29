class PagesController < ApplicationController
	def index
    @transactions = Transaction.all
    @transaction = Transaction.new
    @books = Book.all
	end
end
