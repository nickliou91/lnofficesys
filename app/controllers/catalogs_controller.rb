class CatalogsController < ApplicationController

	def new
		@catalog = Catalog.new
	end

	def index
		@catalog = Catalog.new
		@catalogs = Catalog.all
	end

	def create 
		@catalog = Catalog.create(catalog_params)
		 	if @catalog.save
  		flash[:success]= "Catalog Created"
  		redirect_to catalogs_path
  	else
  		flash[:danger]= "Catalog not created successful"
  		redirect_to catalog_path
  	end

	end

	def destroy 
		
	end

	private
		def catalog_params
			params.require(:catalog).permit(:name, :file)
		end
end
