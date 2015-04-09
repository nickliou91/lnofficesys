class Catalog < ActiveRecord::Base
	
	mount_uploader :file, CatalogUploader
end
