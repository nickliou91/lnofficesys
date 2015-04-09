class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

    	t.string 	:title
    	t.text	 	:file
    	t.string	:depth
    	t.string	:width
    	t.string	:height
    	t.string	:desc
    	t.integer	:category_id
    	t.integer	:sub_category_id

      t.timestamps
    end
     add_index :products, :id

  end
end
