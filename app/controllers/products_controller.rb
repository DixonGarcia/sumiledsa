class ProductsController < ApplicationController
  def index
    @products = Product.all
    @page_scroll = false
    @current_path = "products"
    @enable_sidebar = true
    @title = "Productos"
    puts params[:controller]
  end
  def show
    @product = Product.find(params[:id])
    
  end
end
