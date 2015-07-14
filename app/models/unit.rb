class Unit < ActiveRecord::Base
  belongs_to :property
  has_many :leases, dependent: :destroy
  has_many :tasks, as: :taskable
end
