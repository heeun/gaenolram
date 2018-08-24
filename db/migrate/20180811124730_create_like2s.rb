class CreateLike2s < ActiveRecord::Migration
  def change
    create_table :like2s do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :cafe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
