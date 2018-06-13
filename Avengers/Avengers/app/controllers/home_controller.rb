class HomeController < ApplicationController
  def index
    @search = Product.search(params[:q])
    @products = @search.result.paginate(page: params[:page], per_page: 5)
  end
end
