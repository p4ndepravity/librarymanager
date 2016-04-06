class PagesController < ApplicationController
	def index
    @books = Book.all
    @book = Book.new
    @patron = Patron.new
	end
end
