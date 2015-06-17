class Property < ActiveRecord::Base
  has_many :units, dependent: :destroy
  belongs_to :user
end
