class CreateCourseEvents < ActiveRecord::Migration
  def change
    create_table :course_events do |t|

 	  t.belongs_to :classroom
 	  t.belongs_to :course
      t.date :date
      t.timestamps :time
      t.timestamps null: false

    end
  end
end
