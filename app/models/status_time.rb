class StatusTime < ActiveRecord::Base
  belongs_to :trip, inverse_of: :status_times
  belongs_to :user

end
