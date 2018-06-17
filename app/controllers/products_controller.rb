class ProductsController < ApplicationController
  def index
    @products = Product.all
    @page_scroll = false
    @current_path = "products"
    puts params[:controller]
  end
  def show
    @product = Product.find(params[:id])
    
  end
end
