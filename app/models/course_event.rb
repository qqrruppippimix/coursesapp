# == Schema Information
#
# Table name: course_events
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CourseEvent < ActiveRecord::Base
	  has_many :teachercourseevent
 	  has_many :teachers, through: :teachercourseevent 
 	  has_many :course_payments
 	  has_many :course_reserves
 	  belongs_to :classroom
 	  belongs_to :course
end
