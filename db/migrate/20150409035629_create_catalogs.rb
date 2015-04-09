class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|

    	t.string  :file
    	t.string	:name
      t.timestamps
    end
  end
end
