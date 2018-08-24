class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|
      t.text :title
      t.text :content
      t.text :user
      
      t.timestamps null: false
    end
  end
end
