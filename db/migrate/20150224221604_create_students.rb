class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :first_surname
      t.string :second_surname
      t.string :dni
      t.string :email
      t.string :phone
      t.timestamps null: false
    end
  end
end
