class DashboardsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @sellers = Seller.where(:user_id => current_user.id)
  end

end
