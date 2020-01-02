class User::Seller::ProductsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = current_seller.product.create(product_params)
    if @product.valid?
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  helper_method :current_seller
  def current_seller
    @current_seller ||= Seller.find(params[:seller_id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
  
end
