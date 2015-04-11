class Category < ActiveRecord::Base

	has_many :category_sub_categories
	has_many :sub_categories, :through => :category_sub_categories
	mount_uploader :file, CategoryUploader 
end
