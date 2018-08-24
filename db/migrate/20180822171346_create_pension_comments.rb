class CreatePensionComments < ActiveRecord::Migration
  def change
    create_table :pension_comments do |t|
      t.text :message
      t.integer :article_id
      t.string :user
      
      t.timestamps null: false
    end
  end
end
