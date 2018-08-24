class CreateCafeComments < ActiveRecord::Migration
  def change
    create_table :cafe_comments do |t|
      t.text :message
      t.integer :article_id
      t.string :user

      t.timestamps null: false
    end
  end
end
