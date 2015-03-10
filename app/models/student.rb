# == Schema Information
#
# Table name: students
#
#  id             :integer          not null, primary key
#  name           :string
#  first_surname  :string
#  second_surname :string
#  dni            :string
#  email          :string
#  phone          :string
#  pass           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

	has_many :reserves
	has_many :course_payment
	#validates :name, presence: true, length: { maximum: 60 }
	#validates :first_surname, presence: true, length: { maximum: 60 }
	#validates :second_surname, presence: true, length: { maximum: 60 }
	
	
end
 
