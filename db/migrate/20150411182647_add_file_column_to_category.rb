class AddFileColumnToCategory < ActiveRecord::Migration
  def change
    
    add_column :categories, :file, :string
  end
end
