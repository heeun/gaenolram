class AddImageToClinic < ActiveRecord::Migration
  def change
    add_column :clinics, :image, :string
  end
end
