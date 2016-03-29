class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    @transaction = Transaction.new
  end

  def new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      flash[:notice] = "Transaction successfully created"
      redirect_to root_path
    else
      flash[:alert] = "Failed to create transaction"
      redirect_to root_path
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
  
  private

  def transaction_params
    params.require(:transaction).permit(:patron_id,
                                        :book_id,
                                        :transaction_type_id)
  end
end
