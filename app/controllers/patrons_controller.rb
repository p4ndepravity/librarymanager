class PatronsController < ApplicationController
  def index
    @patrons = Patron.all
  end

  def new
  end

  def create
  end

  def show
    @patron = Patron.find(params[:id])
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
end
