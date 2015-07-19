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
    name: Faker::Address.secondary_address,
    description: Faker::Lorem.sentences)
end

15.times do
  Lease.create!(
    unit_id: rand(25),
    user_id: 1,
    start_date: Faker::Date.backward(600),
    end_date: Faker::Date.forward(365),
    amount: Faker::Number.decimal(2))
end