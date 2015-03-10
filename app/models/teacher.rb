# == Schema Information
#
# Table name: teachers
#
#  id           :integer          not null, primary key
#  name         :string
#  dni          :string
#  email        :string
#  phone        :string
#  skills       :text
#  path_cv      :string
#  path_photo   :string
#  availability :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Teacher < ActiveRecord::Base
	has_many :teachercourseevent
 	has_many :course_events, through: :teachercourseevent 
end
