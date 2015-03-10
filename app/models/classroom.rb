# == Schema Information
#
# Table name: classrooms
#
#  id          :integer          not null, primary key
#  company_id  :integer
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Classroom < ActiveRecord::Base
	belongs_to :company


end
