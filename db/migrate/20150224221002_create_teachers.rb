class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :first_surname
      t.string :second_surname
      t.string :dni
      t.string :email
      t.string :phone
      t.text :skills
      t.string :path_cv
      t.string :path_photo
      t.text :availability
      t.timestamps null: false
    end
  end
end
