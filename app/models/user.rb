class User < ActiveRecord::Base
  has_many :pensions
  has_many :caves
  has_many :meetings
  has_many :clinics
  has_many :likes
  has_many :like2s
  has_many :like3s
  has_many :like4s
  has_many :l_pensions, through: :likes, source: :pension
  has_many :l_caves, through: :like2s, source: :cafe
  has_many :l_meetings, through: :like3s, source: :meeting
  has_many :l_clinics, through: :like4s, source: :clinic
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
