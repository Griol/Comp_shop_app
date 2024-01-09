class ProductController < ApplicationController

  before_action :authenticate_user!, except: :show

  def index
    @product = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    @product.user_id = current_user.id

    respond_to do |format|

    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    authorize! @product 
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    authorize! @product
    @product.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def product_params
      params.require(:product).permit(:name, :model, :description, :price, :user_id)
    end

end
