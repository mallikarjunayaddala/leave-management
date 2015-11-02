class Leave < ActiveRecord::Base
	belongs_to :user



	validates :from_date, presence: true
	validates :reason,  presence: true
	validates :type_of_leave,  presence: true

end
