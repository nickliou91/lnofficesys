class AddFileColumnToSubCategories < ActiveRecord::Migration
  def change
  	add_column :sub_categories, :file, :string
  end
end
