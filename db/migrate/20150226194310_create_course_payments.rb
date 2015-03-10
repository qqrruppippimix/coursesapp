class CreateCoursePayments < ActiveRecord::Migration
  def change
    create_table :course_payments do |t|
      t.belongs_to :course_event
      t.belongs_to :student
      t.belongs_to :course_reserve
      t.timestamps null: false
    end
  end
end
