User.create(email: 'admin@urbanhoe.com', password: 'password')

##################### BEANS #####################

Plant.create(plant_name: 'Snap Beans',
description: 'Also known as string beans, these are you basic green beans',
planting: 'You will never find baby bean plants for sale, so you have no choice but to grow your own from seed. Plant seeds directly in the container but wait until the weather is really warm. Space seeds 4 inches apart and 1 inch deep',
harvesting: 'Over the full growing season you can expect to harvest approximatedly 1 gallon of beans (the full pods) from each plant of the bush type and 2 gallons from each of the pole ones',
varieties: 'Pole beans: Blue Lake (60 days), Kentucky Blue (65 days), Cascade Giant (60 days). Bush beans: Blue Lagoon (60 days), Bush Blue Lake (60 days), Tendercrop (54 days)',
region: '4 to 9',
season: 'mid to late Summer',
plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
minimum_soil_depth_inches: 6,
grow_as: 'annuals',
avatar_file_name: '/public/images/bear.jpg',
family: 'veggie')

Plant.create(plant_name: 'Purple podded Beans',
description: 'A variety on regular green beans, these are green on the inside, but the exterior of the pod is an amazing rich purple that turns green when cooked',
planting: 'You will never find baby bean plants for sale, so you have no choice but to grow your own from seed. Plant seeds directly in the container but wait until the weather is really warm. Space seeds 4 inches apart and 1 inch deep',
harvesting: 'Over the full growing season you can expect to harvest approximatedly 1 gallon of beans (the full pods) from each plant of the bush type and 2 gallons from each of the pole ones',
varieties: 'Pole beans: Purple Peacock (60 days). Bush beans: Purple Queen (52 days)',
region: '4 to 9',
season: 'mid to late Summer',
plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
minimum_soil_depth_inches: 6,
grow_as: 'annuals',
avatar_file_name: '/public/images/bear.jpg',
family: 'veggie')

Plant.create(plant_name: 'Italian Beans',
description: 'Wider and flatter than snap beans. Eat them young as snap beans or let them grow larger and shell them',
planting: 'You will never find baby bean plants for sale, so you have no choice but to grow your own from seed. Plant seeds directly in the container but wait until the weather is really warm. Space seeds 4 inches apart and 1 inch deep',
harvesting: 'Over the full growing season you can expect to harvest approximatedly 1 gallon of beans (the full pods) from each plant of the bush type and 2 gallons from each of the pole ones',
varieties: 'Pole: Romano (70 days). Bush: Varoma (58 days)',
region: '4 to 9',
season: 'mid to late Summer',
plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
minimum_soil_depth_inches: 6,
grow_as: 'annuals',
avatar_file_name: '/public/images/bear.jpg',
family: 'veggie')

Plant.create(plant_name: 'Lima Beans',
description: 'The southerner\'s favorite, for good reason: limas need a long growing season.',
planting: 'You will never find baby bean plants for sale, so you have no choice but to grow your own from seed. Plant seeds directly in the container but wait until the weather is really warm. Space seeds 4 inches apart and 1 inch deep',
harvesting: 'Over the full growing season you can expect to harvest approximatedly 1 gallon of beans (the full pods) from each plant of the bush type and 2 gallons from each of the pole ones',
varieties: 'Thorogreen (68 days), Fordhook 242 (85 days)',
region: '4 to 9',
season: 'mid to late Summer',
plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
minimum_soil_depth_inches: 6,
grow_as: 'annuals',
avatar_file_name: '/public/images/bear.jpg',
family: 'veggie')

Plant.create(plant_name: 'Beets',
description: 'From one plant you get two crops: the round red root and the leaves above ground. Very young tender leaves are great for salads, and older leaves can be cooked like spinach',
planting: 'Beets are cool season vegetables which means you can start early in spring and resow several times. To speed up germination soak seeds overnight then plant directly 1/2 inch deep and 1 inch apart. When seedlings are about 2 inches tall, thin away all but one in each cluster',
harvesting: 'Start harvesting the roots when they are about an inch in diameter. They are ready to eat when very small, but they also keep growing without loss of quality',
varieties: 'Scarlet Supreme (50 days), Golden Beet (55 days), Detroit Dark Red (55 to 60 days)',
region: '2 to 11',
season: 'early Summer, again in Fall',
plant_size: '6 to 8 inches',
minimum_soil_depth_inches: 6,
grow_as: 'annuals',
avatar_file_name: '/public/images/bear.jpg',
family: 'veggie')

Plant.create(plant_name: '',
description: '',
planting: '',
harvesting: '',
varieties: '',
region: '2 to 11',
season: 'early Summer, again in Fall',
plant_size: '6 to 8 inches',
minimum_soil_depth_inches: 6,
grow_as: 'annuals',
avatar_file_name: '/public/images/bear.jpg',
family: 'veggie')

Plant.create(plant_name: '',
description: '',
planting: '',
harvesting: '',
varieties: '',
region: '2 to 11',
season: 'early Summer, again in Fall',
plant_size: '6 to 8 inches',
minimum_soil_depth_inches: 6,
grow_as: 'annuals',
avatar_file_name: '/public/images/bear.jpg',
family: 'veggie')


# plants = []
# 60.times do
#   plants << Plant.create(
#     plant_name: Faker::Lorem.words(rand(1..3)).join(' '),
#     description: Faker::Lorem.paragraph(rand(2..5)),
#     region: Random.new.rand(1..13),
#     season: 'Cold',
#     avatar_file_name: '/public/images/bear.jpg'
#     )
# end
# puts "#{Plant.count} plants created."
