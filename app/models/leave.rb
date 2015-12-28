class Leave < ActiveRecord::Base
	belongs_to :user

	validates :from_date,  presence: true
	validates :to_date,  presence: true
    validates_numericality_of :no_of_days, 
                        :greater_than_or_equal_to =>0, 
                        :message => "To_date must be greater than from_date"

	validates :type_of_leave,  presence: true

    scope :get_leave, lambda { |type| where(type_of_leave: type).sum(:no_of_days) }

  def self.count(user)
    day = user.date_of_joining.strftime("%d-%m-%Y")
    b = []
    b = day.split('-')
    date = Date.today.strftime("%d-%m-%Y")
    c = []
    c = date.split('-')
     
    if (c[2].to_i == b[2].to_i)
	    if b[0].to_i<=15
	      l = 1
	    else 
	      l = 0.5
	    end
	    count = (12 - b[1].to_i)+l
	    return count
	else 
	  count = 12
	  return count
	end
  end

end
