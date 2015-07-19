class Lease < ActiveRecord::Base
  belongs_to :unit
  belongs_to :user
  has_many :tasks, as: :taskable

  scope :current, -> {  where{ (start_date <= Date.today) & (end_date >= Date.today) } }
  

  def collect_rent
  end
end
