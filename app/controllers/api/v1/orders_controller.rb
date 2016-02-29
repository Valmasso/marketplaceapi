class Api::V1::OrdersController < ApplicationController
  before_action :authenticate_with_token!
  respond_to :json

  def show
    respond_with current_user.orders.find(params[:id])
  end

  def index
    respond_with current_user.orders
  end
end
