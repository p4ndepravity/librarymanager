class TransactionsController < ApplicationController
  
  def index
    if params[:book_id] then
      book = Book.find(params[:book_id])
      @transactions = book.transactions
    elsif params[:patron_id] then
      patron = Patron.find(params[:patron_id])
      @transactions = patron.transactions
    end
  end  

  def new() 
    @transaction = Transaction.new
  end

  def create
    book = Book.find(params[:book_id])
    @transaction = book.transactions.new(transaction_params)
    if @transaction.save
      flash[:notice] = "Transaction successfully created"
      redirect_to root_path
    else
      flash[:alert] = "Failed to create transaction"
      redirect_to root_path
    end
  end

  def destroy
  end
  
  private

  def transaction_params
    params.require(:transaction).permit(:patron_id,
                                        :transaction_type_id,
                                        :book_id)
  end
end
