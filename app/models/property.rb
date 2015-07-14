class Property < ActiveRecord::Base
  has_many :units, dependent: :destroy
  belongs_to :user
  has_many :tasks, as: :taskable

  def check_air_filters
    id = self.id
    count = Task.where{ (description == 'Change Air Filters') & ((taskable_id == id) & (taskable_type == 'property')) & ((completed > (DateTime.now-3.months)) | (completed == nil)) }.count
    unless count >= 1
      Task.create(taskable_id: id, taskable_type: 'property', description: 'Change Air Filters', start_date: DateTime.now)
    end
  end

  def spawn_property_tasks
    self.check_air_filters
  end
end
