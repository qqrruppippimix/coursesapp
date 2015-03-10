class CreateCourseReserves < ActiveRecord::Migration
  def change
    create_table :course_reserves do |t|
      t.belongs_to :course_event
      t.belongs_to :student
     
      t.timestamps null: false
    end
  end
end
