class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.text :title
      t.text :content
      t.text :user
      
      t.timestamps null: false
    end
  end
end