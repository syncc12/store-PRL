class SellersController < ApplicationController

  def index
    @sellers=Seller.all
  end

  def show
    @seller=Seller.find(params[:id])
  end

  def new
    @seller=Seller.new
  end

  def create
  end

end
