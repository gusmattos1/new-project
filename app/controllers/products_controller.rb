class ProductsController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]

    if @product.save
      redirect_to product_url(@product.id)
    else
      redirect_to product_path
    end
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]
    @product.url = params[:product][:url]
    @product.user_id = current_user.id
    if @product.save
      redirect_to product_url(@product.id)
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end
end
