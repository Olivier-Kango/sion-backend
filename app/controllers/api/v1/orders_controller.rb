class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: %i[show update destroy mark_as_delivered mark_as_paid]

  # GET /orders
  def index
    @orders = Order.all
    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    @order = Order.new(order_params)
    @order.status = 'new'

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
    render json: { message: 'Order successfully deleted.' }
  end

  # PATCH /orders/1/mark_as_in_progress
  def mark_as_in_progress
    if @order.update(status: 'in_progress')
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH /orders/1/mark_as_delivered
  def mark_as_delivered
    if @order.update(status: 'delivered')
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH /orders/1/mark_as_paid
  def mark_as_paid
    if @order.update(status: 'paid')
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def order_params
    params.require(:order).permit(:quantity, :delivery_point, :product_id, :user_id)
  end
end
