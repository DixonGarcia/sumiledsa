class PagesController < ApplicationController
  def index
  	@title = "HomePage"
  end

  def under_construction
  	@title = "En Construcción"
  	@disable_navigation = true
  end
end
