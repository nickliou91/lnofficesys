class ProductsController < ApplicationController

		skip_before_filter :authenticate_admin!, only: [:show]	
	def new

  	@product = Product.new
  	@categories =Category.all
  	@sub_categories = SubCategory.all 
  end

  def create
  	@product = Product.new(product_params)
  	
  	if @product.save
  		flash[:success]= "Photo Created"
  		redirect_to products_path
  	else
  		redirect_to products_path
  	end

  end


  def index
  	@product = Product.new
    @products = Product.all.paginate(page: params[:page], per_page: 10)
    @categories = Category.all
    @sub_categories = SubCategory.all
  end

  def destroy
  	Product.find(params[:id]).destroy
    flash[:success] = "Product deleted Successful!"
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
    @categories =Category.all
    @sub_categories = SubCategory.all 


  end
  def update 

    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] ="Product Update"
       redirect_to products_path
    else
      render 'edit'
    end

  end

  def show
  	@product = Product.find(params[:id])
  end

  private 
  	def product_params
  		params.require(:product).permit(:title,:desc, :file, :width, :height, :depth, :category_id, :sub_category_id)
  	end

end
