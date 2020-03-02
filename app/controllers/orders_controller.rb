class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: { data: orders }
  end

  def show
    order = Order.find(params[:id])

    render json: { data: order }
  end

  def create
    order = Order.new(permit_params)
    if order.save
      render json: { data: order }, status: :ok
    else
      render json: { error: "Error." }, status: 400
    end
  end

  def destroy
    order = Order.find(params[:id]).destroy
    render json: { data: order }
  end

  private

  def permit_params
    params.permit(:quantity, :product_id)
  end
end
