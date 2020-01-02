class User::SellersController < ApplicationController
before_action :authenticate_user!
  
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
    @seller = current_user.sellers.create(seller_params)
    if @seller.valid?
      redirect_to sellers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def seller_params
    params.require(:seller).permit(:name, :description)
  end

end
