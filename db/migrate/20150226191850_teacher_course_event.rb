class TeacherCourseEvent < ActiveRecord::Migration
  def change

  	 create_table :teachercourseevents do |t|

      t.belongs_to :teacher	
  	  t.belongs_to :course_event
      t.date :date
      t.timestamps :time

      t.timestamps null: false
   end
  end
end
