class CreateLike4s < ActiveRecord::Migration
  def change
    create_table :like4s do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :clinic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
