User.create(email: 'admin@urbanhoe.com', password: 'password')

plants = []
60.times do
  plants << Plant.create(
    plant_name: Faker::Lorem.words(rand(1..3)).join(' '),
    instructions: Faker::Lorem.paragraph(rand(2..5)),
    region: Random.new.rand(1..13),
    season: 'Cold',
    avatar_file_name: '/public/images/bear.jpg'
    )
end

puts "#{Plant.count} plants created."
