class Lease < ActiveRecord::Base
  belongs_to :unit
  belongs_to :user
  has_many :tasks, as: :taskable

  #scope :current, -> {  where(DateTime.now => :start_date..:end_date) }
  #where("start_date < ? AND end_date > ?", DateTime.now, DateTime.now)

  def collect_rent
  end
end
