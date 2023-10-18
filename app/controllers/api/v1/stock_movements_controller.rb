class Api::V1::StockMovementsController < ApplicationController
  before_action :set_stock_movement, only: %i[show update destroy]

  # GET /stock_movements
  def index
    @stock_movements = StockMovement.all

    render json: @stock_movements
  end

  # GET /stock_movements/1
  def show
    render json: @stock_movement
  end

  # POST /stock_movements
  def create
    @stock_movement = StockMovement.new(stock_movement_params)

    if @stock_movement.save
      render json: @stock_movement, status: :created
    else
      render json: @stock_movement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stock_movements/1
  def update
    if @stock_movement.update(stock_movement_params)
      render json: @stock_movement
    else
      render json: @stock_movement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stock_movements/1
  def destroy
    @stock_movement.destroy
    render json: { message: 'Stock movement successfully deleted.' }
  end

  private

  def set_stock_movement
    @stock_movement = StockMovement.find(params[:id])
  end

  def stock_movement_params
    params.require(:stock_movement).permit(:product_id, :user_id, :movement_type, :quantity, :reason, :note)
  end
end
