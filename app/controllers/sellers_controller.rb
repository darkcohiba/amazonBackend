class SellersController < ApplicationController
  before_action :set_seller, only: %i[ show update destroy ]

  # GET /sellers
  def index
    @sellers = Seller.all

    render json: @sellers
  end

  # GET /sellers/1
  def show
    render json: @seller
  end

  # POST /sellers
  def create
    @seller = Seller.new(seller_params)

    if @seller.save
      render json: @seller, status: :created, location: @seller
    else
      render json: @seller.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sellers/1
  def update
    if @seller.update(seller_params)
      render json: @seller
    else
      render json: @seller.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sellers/1
  def destroy
    @seller.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller
      @seller = Seller.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seller_params
      params.require(:seller).permit(:name, :description)
    end
end
