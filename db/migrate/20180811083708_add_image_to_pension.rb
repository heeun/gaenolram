class AddImageToPension < ActiveRecord::Migration
  def change
    add_column :pensions, :image, :string
  end
end
