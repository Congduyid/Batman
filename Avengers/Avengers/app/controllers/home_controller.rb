class HomeController < ApplicationController
  def index
    if params[:query].present?
      @products = Product.search_name(params[:query]).paginate(page: params[:page], per_page: 2)
    else
      @products = Product.all.paginate(page: params[:page], per_page: 2)
    end
  end
end
