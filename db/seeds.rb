require 'faker'

1.times do
  user = User.new(
   email: "admin@example.com",
   password: "helloworld")

  user.skip_confirmation!
  user.save!
end

10.times do
  Property.create!(
    user_id: 1,
    address:  Faker::Address.street_address,
    description:  Faker::Lorem.paragraph)
end


25.times do

  Unit.create!(
    property_id: rand(10),
    name: Faker::Lorem.name,
    description: Faker::Lorem.sentences)
end