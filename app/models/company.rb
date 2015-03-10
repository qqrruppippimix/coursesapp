

class Company < ActiveRecord::Base
	has_many :classrooms, dependent: :destroy
	accepts_nested_attributes_for :classrooms, :reject_if => :all_blank, :allow_destroy => true
end
