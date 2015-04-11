class CategoriesController < ApplicationController


def new
  	@category =Category.new
  end

def create 
	@category = Category.create(category_params)
	if @category.save
		flash[:success] = "Cateogry Add Successful"
		redirect_to categories_path
	else
  	redirect_to categories_path
	end

end

def edit
  @category =Category.find(params[:id])
end

def index
  @categories= Category.all
  @category = Category.new
end

def update 

  @category = Category.find(params[:id])
  if @category.update_attributes(category_params)
    flash[:success] ="Category Update"
    redirect_to admins_path
  else
    render 'edit'
  end

 end

def destroy
  Category.find(params[:id]).destroy
  flash[:success] = "Category deleted Successful!"
  redirect_to categories_path
end

def show

  @category = Category.find(params[:id])
  @products = Product.where(category_id: params[:id])

	# @category= Category.find(params[:id])
	# @category_sub_category = CategorySubCategory.where(category_id: @category.id)
	# # byebug
	# # @category_sub_category.each do |cat|
 
	# 	if @category_sub_category.count == 0 
			
	# 		 @products = Product.where(category_id: @category.id).order("product_order ASC")

	# 	end
  	
  end


 private 
  	def category_params
  		params.require(:category).permit(:name, :desc, :file)
  	end  

end
