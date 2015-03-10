# == Schema Information
#
# Table name: course_payments
#
#  id              :integer          not null, primary key
#  course_event_id :integer
#  student_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class CoursePayment < ActiveRecord::Base
	  belongs_to :course_event
      belongs_to :student
      belongs_to :course_reserve
      
end
