class SubCategoriesController < ApplicationController

	skip_before_filter :authenticate_admin!, only: [:show]
	
def new 
	@sub_category = SubCategory.new
end

def index
	@sub_categories = SubCategory.all
	@sub_category = SubCategory.new
end 

def create 
	@sub_category = SubCategory.create(sub_category_params)
	if @sub_category.save
		flash[:success] = "Sub-Cateogry Added Successfully"
		redirect_to sub_categories_path
	else
		redirect_to sub_categories_path
	end
end

def edit
  @sub_category =SubCategory.find(params[:id])
end

def update 

  @sub_category = SubCategory.find(params[:id])
  if @sub_category.update_attributes(sub_category_params)
    flash[:success] ="Sub-Category Update"
 		redirect_to admins_path  
 	else
    render 'edit'
  end
end



def destroy
	SubCategory.find(params[:id]).destroy
	flash[:success] = "Sub-Category deleted Successful!"
	redirect_to sub_categories_path
end

def show
	@sub_category = SubCategory.find(params[:id])
	@products = Product.where(sub_category_id: params[:id])
end

private 
	def sub_category_params
		params.require(:sub_category).permit(:name, :desc, :file)
	end


end
