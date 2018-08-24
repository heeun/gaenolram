class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.text :title
      t.text :content
      t.string :user_email

      t.timestamps null: false
    end
  end
end
