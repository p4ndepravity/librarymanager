class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book successfully created"
      redirect_to books_path
    else
      flash[:alert] = "Failed to create book"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def menu
  end

  def search
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
end
