class User < ActiveRecord::Base

  validates :firstname,  presence: true, length: { maximum: 20 }
  validates :lastname,  presence: true, length: { maximum: 20 }
  validates :date_of_joining,  presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :leaves  
end
