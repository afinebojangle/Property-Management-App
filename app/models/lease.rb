class Lease < ActiveRecord::Base

  belongs_to :unit
  belongs_to :user
end
