class Api::V1::RequestedProductsController < ApplicationController
  before_action :set_requested_product, only: %i[show update destroy]

  # GET /requested_products
  def index
    @requested_products = RequestedProduct.all.order(request_count: :desc)

    render json: @requested_products
  end

  # GET /requested_products/1
  def show
    render json: @requested_product
  end

  # POST /requested_product
  def create
    @requested_product= RequestedProduct.new(requested_product_params)

    if @requested_product.save
      render json: @requested_product, status: :created
    else
      render json: @requested_product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @requested_product.update(requested_product_params)
      render json: @requested_product
    else
      render json: @requested_product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @requested_product.destroy
    render json: { message: 'Product successfully deleted.' }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_requested_product
    @requested_product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def requested_product_params
    params.require(:requested_product).permit(:name, :request_count)
  end
end
