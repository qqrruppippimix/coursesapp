class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :index
      t.text :content
      t.text :previous_knowledge

      t.timestamps null: false
    end
  end
end
