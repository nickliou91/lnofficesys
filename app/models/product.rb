class Product < ActiveRecord::Base

	has_one :category
	has_one :sub_category
	
	mount_uploader :file, ProductUploader 
end
