class AddImageToCafe < ActiveRecord::Migration
  def change
    add_column :caves, :image, :string
  end
end
