class PagesController < ApplicationController
  def index
  	@title = "HomePage"
  	@products = Product.all
  	@contact = Contact.new
  	@page_scroll = true
  end

  def under_construction
  	@title = "En Construcción"
  	@disable_navigation = true
  end

end
