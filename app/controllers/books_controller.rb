class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]
  before_action :get_genres

  def index
    @books = Book.all
    @book = Book.new
    @genres = Genre.all
    @transaction = Transaction.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book successfully created"
      redirect_to root_path
    else
      flash[:alert] = "Failed to create book"
      redirect_to root_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Book successfully updated"
      redirect_to books_path
    else
      flash[:alert] = "Failed to update book"
      redirect_to books_path
    end
  end

  def destroy
    @book.destroy
    redirect_to action: 'index' and return
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title,
                                 :author_last_name,
                                 :author_first_name, 
                                 :isbn_10, 
                                 :isbn_13, 
                                 :publish_date, 
                                 :is_fiction, 
                                 :genre,
                                 :rating)
  end

  def get_genres
    @genres = Genre.all
  end
end
