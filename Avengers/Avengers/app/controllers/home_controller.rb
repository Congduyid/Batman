class HomeController < ApplicationController
  #skip_before_action :authorize

  include CurrentCart
  before_action :set_cart
  
  def index
    #@cart = current_cart

    if current_nguoidung
      if current_nguoidung.admin == true
      redirect_to rails_admin_path
      end
    end

    if params[:query].present?
      @products = Product.where("loai_id = 1").search_name(params[:query]).paginate(page: params[:page], per_page: 5)
    else
      @products = Product.where("loai_id = 1").all.paginate(page: params[:page], per_page: 2)
    end

    if params[:query].present?
      @phukiens = Product.where("loai_id = 2").search_name(params[:query]).paginate(page: params[:page], per_page: 5)
    else
      @phukiens = Product.where("loai_id = 2").paginate(page: params[:page], per_page: 2)
    end
  end
end