class PagesController < ApplicationController
	def index
    @transactions = Transaction.all
    @transaction = Transaction.new
    @books = Book.all
    @book = Book.new
	end
end
