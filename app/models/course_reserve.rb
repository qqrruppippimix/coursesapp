# == Schema Information
#
# Table name: course_reserves
#
#  id                :integer          not null, primary key
#  course_event_id   :integer
#  student_id        :integer
#  course_reserve_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class CourseReserve < ActiveRecord::Base
	 belongs_to :course_event
     belongs_to :student
     has_one :course_payment
end
