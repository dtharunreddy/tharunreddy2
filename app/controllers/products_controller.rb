class ProductsController < ApplicationController
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
    @product = Product.new(product_params)
    @product.save
    redirect_to users_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product = @product.update(product_params)
    redirect_to users_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product = @product.update(product_params)
    redirect_to users_path
  end

   private
  def product_params
    params.require(:product).permit(:name,:description)
  end 
end
