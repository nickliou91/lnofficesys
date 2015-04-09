class SubCategory < ActiveRecord::Base
	

	has_many :category_sub_categories
	has_many :categories, :through => :category_sub_categories
	mount_uploader :file, SubCategoryUploader 

end
