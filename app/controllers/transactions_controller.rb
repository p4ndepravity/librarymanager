class TransactionsController < ApplicationController
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

  def destroy
  end
  
  private

  def transaction_params
    params.require(:transaction).permit(:patron_id,
                                        :book_id,
                                        :transaction_type_id)
  end
end
