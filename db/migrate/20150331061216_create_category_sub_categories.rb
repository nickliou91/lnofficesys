class CreateCategorySubCategories < ActiveRecord::Migration
  def change
    create_table :category_sub_categories do |t|

    	t.integer :category_id
    	t.integer :sub_category_id
      t.timestamps
    end
  end
end
