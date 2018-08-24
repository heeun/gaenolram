class CreateLike3s < ActiveRecord::Migration
  def change
    create_table :like3s do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :meeting, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
