class StaticPagesController < ApplicationController
 
 	skip_before_filter :authenticate_admin!

  def home
  end


  def product
  	@products = Product.all
  	@categories = Category.all
  	@category_sub_categories = CategorySubCategory.all
  	
  end

  def about
  end

  def catalog
    @catalogs = Catalog.all 
  end

end
