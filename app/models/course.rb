# == Schema Information
#
# Table name: courses
#
#  id                 :integer          not null, primary key
#  name               :string
#  index              :text
#  content            :text
#  previous_knowledge :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Course < ActiveRecord::Base
	has_many :course_events
end
