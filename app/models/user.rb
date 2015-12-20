class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
         validates_presence_of :time_zone
         
         has_many :status_times, inverse_of: :user
         has_many :trips, inverse_of: :user
end


