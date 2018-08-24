class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.text :title
      t.text :content
      t.text :user
      
      t.timestamps null: false
    end
  end
end
