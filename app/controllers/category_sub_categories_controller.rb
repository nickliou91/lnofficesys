class CategorySubCategoriesController < ApplicationController

def new
end

def create
	# byebug
	@category_sub_category = CategorySubCategory.create(category_sub_category_params)

	if @category_sub_category.save
		flash[:success] = "Cateogry-sub-Cateogory Added Successfully"
		redirect_to category_sub_categories_path
	else
		redirect_to category_sub_categories_path

	end


end 

def index
	@category_sub_categories = CategorySubCategory.all
	@categories = Category.all
	@sub_categories = SubCategory.all
	@category_sub_category = CategorySubCategory.new
end

def destroy
CategorySubCategory.find(params[:id]).destroy
flash[:success] = "Category-sub-categories deleted Successful!"
redirect_to category_sub_categories_path

end


private
	def category_sub_category_params
		params.require(:category_sub_category).permit(:category_id, :sub_category_id)

	end


end
