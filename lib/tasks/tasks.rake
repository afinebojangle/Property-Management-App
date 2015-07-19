namespace :tasks do
  desc "Automate Task Creation and Clean-up"

  task spawn_tasks: :environment do
    properties = Property.all

    properties.each do |p|
      p.spawn_property_tasks
    end
  end

end
