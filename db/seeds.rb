User.create(email: 'admin@urbanhoe.com', password: 'password')

##################### VEGGIES #####################

Plant.create(plant_name: 'Snap Beans',
             description: 'Also known as string beans, these are you basic green beans',
             planting: 'You will never find baby bean plants for sale, so you have ' \
            'no choice but to grow your own from seed. Plant seeds directly' \
            ' in the container but wait until the weather is really warm. ' \
            'Space seeds 4 inches apart and 1 inch deep',
             harvesting: 'Over the full growing season you can expect to harvest ' \
              'approximatedly 1 gallon of beans (the full pods) from ' \
              'each plant of the bush type and 2 gallons from each of ' \
              'the pole ones',
             varieties: 'Pole beans: Blue Lake (60 days), Kentucky Blue (65 days), ' \
             'Cascade Giant (60 days). Bush beans: Blue Lagoon (60 days), ' \
             'Bush Blue Lake (60 days), Tendercrop (54 days)',
             region: '4, 5, 6, 7, 8, 9',
             season: 'mid to late Summer',
             plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
             minimum_soil_depth_inches: 6,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Purple podded Beans',
             description: 'A variety on regular green beans, these are green on the ' \
               'inside, but the exterior of the pod is an amazing rich purple ' \
               'that turns green when cooked',
             planting: 'You will never find baby bean plants for sale, so you have no ' \
            'choice but to grow your own from seed. Plant seeds directly in ' \
            'the container but wait until the weather is really warm. Space ' \
            'seeds 4 inches apart and 1 inch deep',
             harvesting: 'Over the full growing season you can expect to harvest ' \
              'approximatedly 1 gallon of beans (the full pods) from each plant ' \
              'of the bush type and 2 gallons from each of the pole ones',
             varieties: 'Pole beans: Purple Peacock (60 days). Bush beans: Purple Queen (52 days)',
             region: '4, 5, 6, 7, 8, 9',
             season: 'mid to late Summer',
             plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
             minimum_soil_depth_inches: 6,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Italian Beans',
             description: 'Wider and flatter than snap beans. Eat them young as snap beans ' \
               'or let them grow larger and shell them',
             planting: 'You will never find baby bean plants for sale, so you have no choice ' \
            'but to grow your own from seed. Plant seeds directly in the container ' \
            'but wait until the weather is really warm. Space seeds 4 inches apart ' \
            'and 1 inch deep',
             harvesting: 'Over the full growing season you can expect to harvest approximatedly ' \
              '1 gallon of beans (the full pods) from each plant of the bush type and ' \
              '2 gallons from each of the pole ones',
             varieties: 'Pole: Romano (70 days). Bush: Varoma (58 days)',
             region: '4, 5, 6, 7, 8, 9',
             season: 'mid to late Summer',
             plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
             minimum_soil_depth_inches: 6,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Lima Beans',
             description: 'The southerner\'s favorite, for good reason: limas need a long growing season.',
             planting: 'You will never find baby bean plants for sale, so you have no choice but ' \
            'to grow your own from seed. Plant seeds directly in the container but wait ' \
            'until the weather is really warm. Space seeds 4 inches apart and 1 inch deep',
             harvesting: 'Over the full growing season you can expect to harvest approximatedly 1 gallon ' \
              'of beans (the full pods) from each plant of the bush type and 2 gallons from each ' \
              'of the pole ones',
             varieties: 'Thorogreen (68 days), Fordhook 242 (85 days)',
             region: '4, 5, 6, 7, 8, 9',
             season: 'mid to late Summer',
             plant_size: 'pole beans grow up to 8 feet, bush beans 12 to 18 inches',
             minimum_soil_depth_inches: 6,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Beet',
             description: 'From one plant you get two crops: the round red root and the leaves above ground. ' \
               'Very young tender leaves are great for salads, and older leaves can be cooked like ' \
               'spinach',
             planting: 'Beets are cool season vegetables which means you can start early in spring and resow ' \
             'several times. To speed up germination soak seeds overnight then plant directly ' \
             '1/2 inch deep and 1 inch apart.',
             harvesting: 'Start harvesting the roots when they are about an inch in diameter. They are ' \
              'ready to eat when very small, but they also keep growing without loss of quality',
             varieties: 'Scarlet Supreme (50 days), Golden Beet (55 days), Detroit Dark Red (55 to 60 days)',
             region: '2, 3, 4, 5, 6, 7, 8, 9, 10, 11',
             season: 'early Summer, again in Fall',
             plant_size: '6 to 8 inches',
             minimum_soil_depth_inches: 6,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Carrot',
             description: 'people who think that a carrot is a carrot is a carrot will change their minds ' \
               'when they first taste one that is really fresh',
             planting: 'They germinate best when the soil is 70-80F but they can get started much sooner. ' \
            'Carrots don\'t transplant well so must be sown in place. The seeds are so small ' \
            'that you cannot but plant them very thickly',
             harvesting: 'Start pulling them all as soon as you want. If you sow in summer and the ' \
             'carrots are still growing when the weather turns cool, you can leave them in ' \
             'place and have the fun of pulling fresh carrots at Thanksgiving',
             varieties: 'Thumbelina (60 days), Scarlet nantes (70 days), Little Fingers (65 days)',
             region: '3, 4, 5, 6, 7, 8, 9, 10',
             season: 'Summer through Fall',
             plant_size: '6 to 12 inches below and above ground',
             minimum_soil_depth_inches: 8,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Cucumber',
             description: 'Grow on vines and they take up lots of room, so beware!',
             planting: 'They are heat lovers and they won\'t germinate until the temperature hits 70F. ' \
         'For direct sowing, wait until the weather is really warm. Plant 6 to 8 seeds in a ' \
         'cluster about 1/2 inch deep, and thin as they pop up. ',
             harvesting: 'Pick cucumbers while they are small and tender or the vines will shut down ' \
              '(once they have achieved their reproductive goal). Therefore, be vigilant, in ' \
              'the height of summer the fruits grow astonishingly fast.',
             varieties: 'Lemon (60 days), Suyo (62 days), Sweet Success (50 days)',
             region: '2, 3, 4, 5, 6',
             season: 'Summer',
             plant_size: '3 foot diameter for bush and 6 foot vine for pole',
             minimum_soil_depth_inches: 10,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Eggplant',
             description: 'Either love it or hate it, we love eggplants! The plants are extremely ' \
             'attractive, with elegant leaves, pretty little flowers and rich lustrous fruits.',
             planting: 'Hot weather plants need temperatures above 75F to germinate. Takes time to ' \
            'germinate so it is better to acquire small plants for transplant.',
             harvesting: 'Overmature eggplants are not very appealing. The outside skin should be ' \
              'glossy and smooth. To keep the plant producing it is important to keep up ' \
              'with the harvesting. If even one fruit sets seed, the plant will slow down ' \
              'significantly',
             varieties: 'Asian types are great for containers',
             region: '2, 3, 4, 5, 6',
             season: 'Late Summer',
             plant_size: '2 feet tall',
             minimum_soil_depth_inches: 10,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Kale',
             description: 'Large dark blue green, extremelly frilly leaves.',
             planting: 'As soon as nighttime temps are no longer cold. Plant seeds in clusters 1/4 ' \
            'inch deep, space clusters a bit dependeing on how soon intend to harvest',
             harvesting: 'As soon as they pop up for baby leaves, but don\'t wait too much or the ' \
              'leaves will be tough and hardy',
             varieties: 'Red Russian (50 days), Lacinato (62 days)',
             region: '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13',
             season: 'Late Spring through Winter',
             plant_size: '4 to 24 inches',
             minimum_soil_depth_inches: 8,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Kale',
             description: 'A leafy green with hearty flavored leaves',
             planting: 'As soon as nighttime temps are no longer cold. Plant seeds in clusters 1/4 ' \
            'inch deep, space clusters a bit dependeing on how soon intend to harvest',
             harvesting: 'As soon as they pop up for baby leaves, but don\'t wait too much or the ' \
              'leaves will be tough and hardy',
             varieties: 'Red Giant (45 days), Osaka Purple (45 days)',
             region: '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13',
             season: 'Late Spring through Winter',
             plant_size: '4 to 24 inches',
             minimum_soil_depth_inches: 8,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Swiss Chard',
             description: 'Botanically a first cousing to beets, gastronomically closer to spinach',
             planting: 'As soon as nighttime temps are no longer cold. Plant seeds in clusters 1/4 ' \
            'inch deep, space clusters a bit dependeing on how soon intend to harvest',
             harvesting: 'As soon as they pop up for baby leaves, but don\'t wait too much or the ' \
              'leaves will be tough and hardy',
             varieties: 'Fordhook Giant (60 days), Ruby Red (60 days), Bright Yellow (60 days)',
             region: '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13',
             season: 'Late Spring through Winter',
             plant_size: '4 to 24 inches',
             minimum_soil_depth_inches: 8,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Lettuce',
             description: 'Perfect container veggie. Easy to grow, with a short time to harvest, lovely ' \
               'to look at, and just the thing to pick fresh for each salad',
             planting: 'A cool season plant. Make several sowing 2 to 3 weeks apart. Seed them in clusters' \
            ' and space them 6 inches apart',
             harvesting: 'Beware because lettuce is susceptible to bolting if the weather becomes too ' \
              'hot. Pick individual leaves (working from the outside in) or pull the whole plant',
             varieties: 'Too many to mention them all, our favorites: Deer Tongue (60 days), ' \
             'Lollo Rossa (55 days), Black Seeded Simpson (45 days)',
             region: '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13',
             season: 'Spring through early Summer, again in Fall',
             plant_size: '8 to 10 inches',
             minimum_soil_depth_inches: 6,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Arugula',
             description: 'Aka Rocket, the plant is not among the most gorgeous, but who cares - we are ' \
               'not after looks but taste',
             planting: 'A cool season plant. Make several sowing 2 to 3 weeks apart. Seed them in ' \
            'clusters and space them 6 inches apart',
             harvesting: 'Pick individual leaves (working from the outside in) or pull the whole ' \
              'plant. Susceptible to bolting if the weather becomes too hot',
             varieties: 'Italian Wild (55 days)',
             region: '1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13',
             season: 'Spring through early Summer, again in Fall',
             plant_size: '8 to 10 inches',
             minimum_soil_depth_inches: 6,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

Plant.create(plant_name: 'Sweet Pepper',
             description: 'Among the most decorative vegetables, worth to grow just for looks',
             planting: 'The key is timming. Plant too soon in spring and the cool temperature will do ' \
            'them in. Too late and they will be still trying to produce fruit when the weather ' \
            'turns cool',
             harvesting: 'The more you pick the more they produce, so go ahead and start harvesting ' \
              'small peppers as they come up',
             varieties: 'Red Ace (50 days), Orange Valencia (70 days), Chocolate Beauty (70 days)',
             region: '2, 3, 4, 5, 6',
             season: 'Late Summer',
             plant_size: '12 to 16 inches',
             minimum_soil_depth_inches: 8,
             grow_as: 'Annuals',
             image: '/public/images/bear.jpg',
             family: 'Veggie')

##################### FRUITS #####################

20.times do
  a = Random.new.rand(1..10)
  Plant.create(plant_name: Faker::Lorem.word.capitalize,
               description: Faker::Lorem.words(rand(5..15)).join(' '),
               planting: Faker::Lorem.words(rand(10..20)).join(' '),
               harvesting: Faker::Lorem.words(rand(10..20)).join(' '),
               varieties: Faker::Lorem.words(rand(5..15)).join(' '),
               region: '' + (a..(a + 3)).to_a.join(', '),
               season: 'Late Summer',
               plant_size: "#{Random.new.rand(6..13)} inches",
               minimum_soil_depth_inches: Random.new.rand(1..13),
               grow_as: 'Annuals',
               image: '/public/images/bear.jpg',
               family: 'Fruit'
  )
end

##################### HERBS #####################

20.times do
  a = Random.new.rand(1..10)
  Plant.create(plant_name: Faker::Lorem.word.capitalize,
               description: Faker::Lorem.words(rand(5..15)).join(' '),
               planting: Faker::Lorem.words(rand(10..20)).join(' '),
               harvesting: Faker::Lorem.words(rand(10..20)).join(' '),
               varieties: Faker::Lorem.words(rand(5..15)).join(' '),
               region: '' + (a..(a + 3)).to_a.join(', '),
               season: 'Late Summer',
               plant_size: "#{Random.new.rand(6..13)} inches",
               minimum_soil_depth_inches: Random.new.rand(1..13),
               grow_as: 'Annuals',
               image: '/public/images/bear.jpg',
               family: 'Herb'
  )
end
