class PatronsController < ApplicationController
  before_action :find_patron, only: [:show, :edit, :update, :destroy]

  def index
    @patrons = Patron.all
    @patron = Patron.new
  end

  def new
    @patron = Patron.new
  end

  def create
    @patron = Patron.new(patron_params)
    if @patron.save
      flash[:notice] = "Patron successfully created"
      redirect_to patrons_path
    else
      flash[:alert] = "Failed to create patron"
      redirect_to patrons_path
    end
  end

  def show
    @books = Book.all
    @transactions = if @patron.transactions.any? then @patron.transactions else end
    @transaction = Transaction.new
  end

  def edit
  end

  def update
    if @patron.update(patron_params)
      flash[:notice] = "Patron successfully updated"
      redirect_to patrons_path
    else
      flash[:alert] = "Failed to update patron"
      redirect_to patrons_path
    end
  end

  def destroy
    if @patron.destroy
      flash[:notice] = "Patron successfully deleted"
      redirect_to patrons_path
    else
      flash[:alert] = "Failed to delete patron"
      redirect_to patrons_path
    end
  end

  private

  def find_patron
    @patron = Patron.find(params[:id])
  end

  def patron_params
    params.require(:patron).permit(:last_name, 
                                   :first_name, 
                                   :street_address, 
                                   :city, 
                                   :state, 
                                   :zip, 
                                   :phone_number)
  end
end
