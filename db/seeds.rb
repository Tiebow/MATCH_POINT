# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'
require 'open-uri'

puts "Destroying all Likes..."
Like.destroy_all
puts "All likes destroyed successfully!"

puts "Destroying all Messages..."
Message.destroy_all
puts "All messages destroyed successfully!"

puts "Destroying all Chatrooms..."
Chatroom.destroy_all
puts "All chatrooms destroyed successfully!"

puts "Destroying all Wishes..."
Wish.destroy_all
puts "All wishes destroyed successfully!"

puts "Destroying all Matches..."
Match.destroy_all
puts "All Matches destroyed successfully!"

puts "Destroying all Users..."
User.destroy_all
puts "All users destroyed successfully!"

puts "Destroying all Locations..."
Location.destroy_all
puts "All locations destroyed successfully!"

puts "Destroying all Sports..."
Sport.destroy_all
puts "All sports destroyed successfully!"

puts "Creating sports array..."
SPORTS_ARRAY = []
SPORTS_ARRAY << cycling = Sport.create!(name: 'cycling')
puts "Sport: #{cycling.name} created !"
SPORTS_ARRAY << football = Sport.create!(name: 'football')
puts "Sport: #{football.name} created !"
SPORTS_ARRAY << tennis = Sport.create!(name: 'tennis')
puts "Sport: #{tennis.name} created !"
SPORTS_ARRAY << running = Sport.create!(name: 'running')
puts "Sport: #{running.name} created !"
SPORTS_ARRAY << basketball = Sport.create!(name: 'basketball')
puts "Sport: #{basketball.name} created !"
# handball = Sport.create!(name: 'handball')
# puts "Sport: #{handball.name} created !"
SPORTS_ARRAY << petanque = Sport.create!(name: 'pétanque')
puts "Sport: #{petanque.name} created !"
SPORTS_ARRAY << ping_pong = Sport.create!(name: 'ping pong')
puts "Sport: #{ping_pong.name} created !"
SPORTS_ARRAY << horse_riding = Sport.create!(name: 'horse riding')
puts "Sport: #{horse_riding.name} created !"
SPORTS_ARRAY << golf = Sport.create!(name: 'golf')
puts "Sport: #{golf.name} created !"
SPORTS_ARRAY << surf = Sport.create!(name: 'surf')
puts "Sport: #{surf.name} created !"
puts "All sports created successfully!"
# SPORTS_ARRAY = [cycling, football, tennis, running, basketball, petanque, ping_pong, horse_riding, golf]

puts "Creating locations..."
location = Location.create!(name: 'Terrain de sport des jardins Saint-Paul',
                            address: '9 rue Charlemagne, 75004 Paris',
                            sport_id: football.id,
                            longitude: 48.85443,
                            latitude: 2.35894)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: 'Terrain de sport des jardins Saint-Paul',
                            address: '9 rue Charlemagne, 75004 Paris',
                            sport_id: basketball.id,
                            longitude: 48.85443,
                            latitude: 2.35894)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_football = Location.create!(name: 'Square Montholon',
                                     address: '2 Rue Mayran, 75009 Paris',
                                     sport_id: football.id,
                                     longitude: 48.87717,
                                     latitude: 2.34569)
puts "Location #{location_football.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: 'Square Montholon',
                            address: '2 Rue Mayran, 75009 Paris',
                            sport_id: basketball.id,
                            longitude: 48.87717,
                            latitude: 2.34569)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square d'Anvers",
                            address: '10 bis avenue Trudaine 75009 Paris',
                            sport_id: basketball.id,
                            longitude: 48.85083,
                            latitude: 2.27414)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square d'Anvers",
                            address: '10 bis avenue Trudaine 75009 Paris',
                            sport_id: basketball.id,
                            longitude: 48.85083,
                            latitude: 2.27414)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_basketball = Location.create!(name: "Playground Duperré",
                                       address: '22 rue Duperré, 75018 Paris',
                                       sport_id: basketball.id,
                                       longitude: 48.88208,
                                       latitude: 2.33527)
puts "Location #{location_basketball.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Golf ParisLongchamp",
                            address: '61 route des Tribunes, 75016 Paris',
                            sport_id: golf.id,
                            longitude: 48.85589,
                            latitude: 2.22826)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_golf = Location.create!(name: "SCUF Golf (Practice)",
                                 address: "17 Rue Louise-Émilie de la Tour d'Auvergne, 75009 Paris",
                                 sport_id: golf.id,
                                 longitude: 48.87905,
                                 latitude: 2.34379)
puts "Location #{location_golf.name} created successfully!"

puts "Creating locations..."
location_horse = Location.create!(name: "CLC La Cartoucherie",
                                  address: "Route du Champ-de-Manœuvre, bois de Vincennes, 75012, paris",
                                  sport_id: horse_riding.id,
                                  longitude: 48.84848,
                                  latitude: 2.43820)
puts "Location #{location_horse.name} created successfully!"

puts "Creating locations..."
location_petanque = Location.create!(name: "Square Suzanne-Buisson",
                                     address: "7 bis, rue Girardon, 75018 PARIS",
                                     sport_id: petanque.id,
                                     longitude: 48.8875,
                                     latitude: 2.33746)
puts "Location #{location_petanque.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Bois de Vincennes",
                            address: "Bois de Vincennes - 75012 Paris",
                            sport_id: petanque.id,
                            longitude: 48.85337,
                            latitude: 2.43523)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_cycling = Location.create!(name: "Bois de Vincennes",
                                    address: "Bois de Vincennes - 75012 Paris",
                                    sport_id: cycling.id,
                                    longitude: 48.85337,
                                    latitude: 2.43523)
puts "Location #{location_cycling.name} created successfully!"

puts "Creating locations..."
location_running = Location.create!(name: "Bois de Vincennes",
                                    address: "Bois de Vincennes - 75012 Paris",
                                    sport_id: running.id,
                                    longitude: 48.85337,
                                    latitude: 2.43523)
puts "Location #{location_running.name} created successfully!"

puts "Creating locations..."
location_ping = Location.create!(name: "Bois de Vincennes",
                                 address: "Bois de Vincennes - 75012 Paris",
                                 sport_id: ping_pong.id,
                                 longitude: 48.85337,
                                 latitude: 2.43523)
puts "Location #{location_ping.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Square Émile-Chautemps",
                            address: "263 Rue Saint-Martin, 75003 Paris",
                            sport_id: ping_pong.id,
                            longitude: 48.86888,
                            latitude: 2.35536)
puts "Location #{location.name} created successfully!"

puts "Creating locations..."
location_tennis = Location.create!(name: "Tennis Déjerine Doctors",
                                   address: "30 Rue des Docteurs Dejerine, 75020 Paris",
                                   sport_id: tennis.id,
                                   longitude: 48.85686,
                                   latitude: 2.41172)
puts "Location #{location_tennis.name} created successfully!"

puts "Creating locations..."
location = Location.create!(name: "Edouard Pailleron Tennis",
                            address: "22 Rue Edouard Pailleron, 75019 Paris",
                            sport_id: tennis.id,
                            longitude: 48.88143,
                            latitude: 2.38054)
puts "Location #{location.name} created successfully!"

puts "All Locations were created successfully!"

puts "Now creating the users..."
puts "Creating coach user..."
user = User.new(username: "MP Coach",
                email: "coach@coach.com",
                password: "coachcoach",
                age: 25)
  user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
  user.photo.attach(io: user_photo, filename: "#{user.username}_#{user.email}_photo.jpeg", content_type: 'image/jpeg')
puts "saving #{user.username}..."
user.save!
puts "#{user.username} saved successfully!"



puts "Creating Charlotte..."
first_user = User.new(username: 'Charlotte',
                      email: 'charlotte@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://ca.slack-edge.com/T02NE0241-U01HWUHQEMQ-396ed62d24ef-512")
first_user.photo.attach(io: user_photo, filename: "Charlotte_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Charlotte..."
first_user.save!
puts "Charlotte saved successfully!"

puts "Creating Diane..."
second_user = User.new(username: 'Diane',
                       email: 'diane@lewagon.org',
                       password: "123456",
                       age: rand(27..30))
user_photo = URI.open("https://ca.slack-edge.com/T02NE0241-UDF8DJTMM-26237fc8cffe-512")
second_user.photo.attach(io: user_photo, filename: "Diane_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Diane..."
second_user.save!
puts "Diane saved successfully!"

puts "Creating Catherine..."
third_user = User.new(username: 'Cath',
                      email: 'catherine@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
third_user.photo.attach(io: user_photo, filename: "Catherine_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Catherine..."
third_user.save!
puts "Catherine saved successfully!"

puts "Creating Kelly..."
fourth_user = User.new(username: 'Kelly',
                      email: 'Kelly@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
fourth_user.photo.attach(io: user_photo, filename: "Kelly_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Kelly..."
fourth_user.save!
puts "Kelly saved successfully!"

puts "Creating Paume..."
fifth_user = User.new(username: 'Paume',
                      email: 'Paume@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
fifth_user.photo.attach(io: user_photo, filename: "Paume_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Paume..."
fifth_user.save!
puts "Paume saved successfully!"

puts "Creating Perle..."
sixth_user = User.new(username: 'Bijoux',
                      email: 'Perle@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
sixth_user.photo.attach(io: user_photo, filename: "Perle_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Perle..."
sixth_user.save!
puts "Perle saved successfully!"

puts "Creating Anne..."
seventh_user = User.new(username: 'Anne',
                      email: 'Anne@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
seventh_user.photo.attach(io: user_photo, filename: "Anne_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Anne..."
seventh_user.save!
puts "Anne saved successfully!"

puts "Creating Christelle..."
eigth_user = User.new(username: 'CriCri',
                      email: 'Christelle@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
eigth_user.photo.attach(io: user_photo, filename: "Christelle_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Christelle..."
eigth_user.save!
puts "Christelle saved successfully!"

puts "Creating Paula..."
ninth_user = User.new(username: 'Popo',
                      email: 'Paula@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
ninth_user.photo.attach(io: user_photo, filename: "Paula_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Paula..."
ninth_user.save!
puts "Paula saved successfully!"

puts "Creating Christina..."
tenth_user = User.new(username: 'Popo',
                      email: 'Christina@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
tenth_user.photo.attach(io: user_photo, filename: "Christina_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Christina..."
tenth_user.save!
puts "Christina saved successfully!"

puts "Creating Terry..."
eleventh_user = User.new(username: 'Terry',
                      email: 'Terry@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
eleventh_user.photo.attach(io: user_photo, filename: "Terry_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Terry..."
eleventh_user.save!
puts "Terry saved successfully!"

puts "Creating Delphine..."
twelveth_user = User.new(username: 'Delphine',
                      email: 'Delphine@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
twelveth_user.photo.attach(io: user_photo, filename: "Delphine_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Delphine..."
twelveth_user.save!
puts "Delphine saved successfully!"

puts "Creating Marie..."
thirteenth_user = User.new(username: 'Mamamia',
                      email: 'Marie@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
thirteenth_user.photo.attach(io: user_photo, filename: "Marie_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Marie..."
thirteenth_user.save!
puts "Marie saved successfully!"

puts "Creating Hortence..."
fourteenth_user = User.new(username: 'Hortie',
                      email: 'Hortence@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
fourteenth_user.photo.attach(io: user_photo, filename: "Hortence_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Hortence..."
fourteenth_user.save!
puts "Hortence saved successfully!"

puts "Creating Laura..."
fifteenth_user = User.new(username: 'Lolo',
                      email: 'Laura@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
fifteenth_user.photo.attach(io: user_photo, filename: "Laura_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Laura..."
fifteenth_user.save!
puts "Laura saved successfully!"

puts "Creating Rania..."
sixteenth_user = User.new(username: 'Rania',
                      email: 'Rania@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
sixteenth_user.photo.attach(io: user_photo, filename: "Rania_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Rania..."
sixteenth_user.save!
puts "Rania saved successfully!"

seventeenth_user = User.new(username: 'Stella',
                      email: 'Stella@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
seventeenth_user.photo.attach(io: user_photo, filename: "Stella_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Stella..."
seventeenth_user.save!
puts "Stella saved successfully!"

eighteenth_user = User.new(username: 'Camille',
                      email: 'Camille@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
eighteenth_user.photo.attach(io: user_photo, filename: "Camille_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Camille..."
eighteenth_user.save!
puts "Camille saved successfully!"

nineteenth_user = User.new(username: 'Maud',
                      email: 'Maud@lewagon.org',
                      password: "123456",
                      age: rand(27..30))
user_photo = URI.open("https://source.unsplash.com/1600x900/?woman,sport,fitness")
nineteenth_user.photo.attach(io: user_photo, filename: "Maud_photo.jpeg", content_type: 'image/jpeg')
puts "attaching photo...."
puts "saving Maud..."
nineteenth_user.save!
puts "Maud saved successfully!"

puts "Users created successfully!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: surf.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating Catherine's wish..."
Catherines_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: third_user.id,
                       location: '3 Rue de Vaugirard, 75006 Paris')
puts "saving Catherine's wish..."
Catherines_wish.save!
puts "Wish saved successfully!"

puts "Creating Camille's wish..."
Camilles_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: eighteenth_user.id,
                       location: '2-12 Imp. Baudran, 75013 Paris')
puts "saving Camille's wish..."
Camilles_wish.save!
puts "Wish saved successfully!"

puts "Creating Kelly's wish..."
Kellys_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: fourth_user.id,
                       location: '45-43 Rue de la Procession, 75015 Paris')
puts "saving Kelly's wish..."
Kellys_wish.save!
puts "Wish saved successfully!"

puts "Creating Stella's wish..."
Stellas_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: seventeenth_user.id,
                       location: '28-40 Av. de la Bourdonnais, 75007 Paris')
puts "saving Stella's wish..."
Stellas_wish.save!
puts "Wish saved successfully!"

puts "Creating Paume's wish..."
Paumes_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: fifth_user.id,
                       location: '43-39 Rue François 1er, 75008 Paris')
puts "saving Paume's wish..."
Paumes_wish.save!
puts "Wish saved successfully!"

puts "Creating Laura's wish..."
Lauras_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: fifteenth_user.id,
                       location: 'Rue de Berri, 75008 Paris')
puts "saving Laura's wish..."
Lauras_wish.save!
puts "Wish saved successfully!"

puts "Creating Perle's wish..."
Perles_wish = Wish.new(date: Date.today,
                       sport_id: surf.id,
                       user_id: sixth_user.id,
                       location: '130 Rue du Chemin Vert, 75011 Paris')
puts "saving Perle's wish..."
Perles_wish.save!
puts "Wish saved successfully!"
puts "Surf Wishes saved successfully"

# puts "Creating Charlotte's wish..."
# charlottes_wish = Wish.new(date: Date.today,
#                            sport_id: football.id,
#                            user_id: first_user.id,
#                            location: '16 villa gaudelet, paris')
# puts "saving Charlotte's wish..."
# charlottes_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Diane's wish..."
# dianes_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: second_user.id,
#                        location: 'Pl. des Vosges, 75003 Paris')
# puts "saving Diane's wish..."
# dianes_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Catherine's wish..."
# catherines_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: third_user.id,
#                        location: '3 Rue de Vaugirard, 75006 Paris')
# puts "saving Catherine's wish..."
# catherines_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Camille's wish..."
# camilles_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: eighteenth_user.id,
#                        location: '2-12 Imp. Baudran, 75013 Paris')
# puts "saving Camille's wish..."
# camilles_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Kelly's wish..."
# kellys_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: fourth_user.id,
#                        location: '45-43 Rue de la Procession, 75015 Paris')
# puts "saving Kelly's wish..."
# kellys_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Stella's wish..."
# stellas_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: seventeenth_user.id,
#                        location: '28-40 Av. de la Bourdonnais, 75007 Paris')
# puts "saving Stella's wish..."
# stellas_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Paume's wish..."
# paumes_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: fifth_user.id,
#                        location: '43-39 Rue François 1er, 75008 Paris')
# puts "saving Paume's wish..."
# paumes_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Laura's wish..."
# lauras_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: fifteenth_user.id,
#                        location: 'Rue de Berri, 75008 Paris')
# puts "saving Laura's wish..."
# lauras_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Perle's wish..."
# perles_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: sixth_user.id,
#                        location: '130 Rue du Chemin Vert, 75011 Paris')
# puts "saving Perle's wish..."
# perles_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Rania's wish..."
# ranias_wish = Wish.new(date: Date.today,
#                        sport_id: football.id,
#                        user_id: sixteenth_user.id,
#                        location: '32 Rue Jean-Pierre Timbaud, 75011 Paris')
# puts "saving Rania's wish..."
# ranias_wish.save!
# puts "Wish saved successfully!"
# puts "Football Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: basketball.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

# puts "Creating Diane's wish..."
# dianes_wish = Wish.new(date: Date.today,
#                        sport_id: basketball.id,
#                        user_id: second_user.id,
#                        location: 'Pl. des Vosges, 75003 Paris')
# puts "saving Diane's wish..."
# dianes_wish.save!
# puts "Wish saved successfully!"

puts "Creating Perle's wish..."
perles_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: sixth_user.id,
                       location: '10 Bd Barbès, 75018 Paris')
puts "saving Perle's wish..."
perles_wish.save!
puts "Wish saved successfully!"

puts "Creating Anne's wish..."
annes_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: seventh_user.id,
                       location: '2-14 Rue Fromentin, 75009 Paris')
puts "saving Anne's wish..."
annes_wish.save!
puts "Wish saved successfully!"

puts "Creating Christelle's wish..."
christelles_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: eigth_user.id,
                       location: '14 Rue Ballu, 75009 Paris')
puts "saving Christelle's wish..."
christelles_wish.save!
puts "Wish saved successfully!"

puts "Creating Paula's wish..."
paulas_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: ninth_user.id,
                       location: '2 Rue de Birague, 75004 Paris')
puts "saving Paula's wish..."
paulas_wish.save!
puts "Wish saved successfully!"

puts "Creating Christina's wish..."
christinas_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: tenth_user.id,
                       location: '14 Rue Saint-Louis, 75004 Paris')
puts "saving Christina's wish..."
christinas_wish.save!
puts "Wish saved successfully!"

puts "Creating Terry's wish..."
terrys_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: eleventh_user.id,
                       location: '4-14 Rue Messidor, 75012 Paris')
puts "saving Terry's wish..."
terrys_wish.save!
puts "Wish saved successfully!"

puts "Creating Delphine's wish..."
delphines_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: twelveth_user.id,
                       location: '25 Bd de Reuilly, 75012 Paris')
puts "saving Delphine's wish..."
delphines_wish.save!
puts "Wish saved successfully!"

puts "Creating Rania's wish..."
ranias_wish = Wish.new(date: Date.today,
                       sport_id: basketball.id,
                       user_id: sixteenth_user.id,
                       location: '32 Rue Jean-Pierre Timbaud, 75011 Paris')
puts "saving Rania's wish..."
ranias_wish.save!
puts "Wish saved successfully!"
puts "basketball Wishes saved successfuly!"


puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: football.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating Catherine's wish..."
catherines_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: third_user.id,
                       location: '3 Rue de Vaugirard, 75006 Paris')
puts "saving Catherine's wish..."
catherines_wish.save!
puts "Wish saved successfully!"

puts "Creating Camille's wish..."
camilles_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: eighteenth_user.id,
                       location: '2-12 Imp. Baudran, 75013 Paris')
puts "saving Camille's wish..."
camilles_wish.save!
puts "Wish saved successfully!"

puts "Creating Kelly's wish..."
kellys_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: fourth_user.id,
                       location: '45-43 Rue de la Procession, 75015 Paris')
puts "saving Kelly's wish..."
kellys_wish.save!
puts "Wish saved successfully!"

puts "Creating Stella's wish..."
stellas_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: seventeenth_user.id,
                       location: '28-40 Av. de la Bourdonnais, 75007 Paris')
puts "saving Stella's wish..."
stellas_wish.save!
puts "Wish saved successfully!"

puts "Creating Paume's wish..."
paumes_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: fifth_user.id,
                       location: '43-39 Rue François 1er, 75008 Paris')
puts "saving Paume's wish..."
paumes_wish.save!
puts "Wish saved successfully!"

puts "Creating Laura's wish..."
lauras_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: fifteenth_user.id,
                       location: 'Rue de Berri, 75008 Paris')
puts "saving Laura's wish..."
lauras_wish.save!
puts "Wish saved successfully!"

puts "Creating Perle's wish..."
perles_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: sixth_user.id,
                       location: '130 Rue du Chemin Vert, 75011 Paris')
puts "saving Perle's wish..."
perles_wish.save!
puts "Wish saved successfully!"

puts "Creating Rania's wish..."
ranias_wish = Wish.new(date: Date.today,
                       sport_id: football.id,
                       user_id: sixteenth_user.id,
                       location: '32 Rue Jean-Pierre Timbaud, 75011 Paris')
puts "saving Rania's wish..."
ranias_wish.save!
puts "Wish saved successfully!"
puts "Football Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: tennis.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating Marie's wish..."
maries_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: thirteenth_user.id,
                       location: '176 Rue de Paris, 94220 Charenton-le-Pont')
puts "saving Marie's wish..."
maries_wish.save!
puts "Wish saved successfully!"

puts "Creating Hortence's wish..."
hortences_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: fourteenth_user.id,
                       location: '108 Av. de France, 75013 Paris')
puts "saving Hortence's wish..."
hortences_wish.save!
puts "Wish saved successfully!"

puts "Creating Maud's wish..."
mauds_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: nineteenth_user.id,
                       location: '15 Rue Maurice de la Sizeranne, 75015 Paris')
puts "saving Maud's wish..."
mauds_wish.save!
puts "Wish saved successfully!"

puts "Creating Catherine's wish..."
catherines_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: third_user.id,
                       location: '3 Rue de Vaugirard, 75006 Paris')
puts "saving Catherine's wish..."
catherines_wish.save!
puts "Wish saved successfully!"

puts "Creating Camille's wish..."
camilles_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: eighteenth_user.id,
                       location: '2-12 Imp. Baudran, 75013 Paris')
puts "saving Camille's wish..."
camilles_wish.save!
puts "Wish saved successfully!"

puts "Creating Kelly's wish..."
kellys_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: fourth_user.id,
                       location: '45-43 Rue de la Procession, 75015 Paris')
puts "saving Kelly's wish..."
kellys_wish.save!
puts "Wish saved successfully!"

puts "Creating Delphine's wish..."
delphines_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: sixth_user.id,
                       location: '25 Bd de Reuilly, 75012 Paris')
puts "saving Delphine's wish..."
delphines_wish.save!
puts "Wish saved successfully!"

puts "Creating Rania's wish..."
ranias_wish = Wish.new(date: Date.today,
                       sport_id: tennis.id,
                       user_id: sixteenth_user.id,
                       location: '32 Rue Jean-Pierre Timbaud, 75011 Paris')
puts "saving Rania's wish..."
ranias_wish.save!
puts "Wish saved successfully!"
puts "tennis Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: running.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating Stella's wish..."
stellas_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: seventeenth_user.id,
                       location: '28-40 Av. de la Bourdonnais, 75007 Paris')
puts "saving Stella's wish..."
stellas_wish.save!
puts "Wish saved successfully!"

puts "Creating Paume's wish..."
paumes_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: fifth_user.id,
                       location: '43-39 Rue François 1er, 75008 Paris')
puts "saving Paume's wish..."
paumes_wish.save!
puts "Wish saved successfully!"

puts "Creating Laura's wish..."
lauras_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: fifteenth_user.id,
                       location: 'Rue de Berri, 75008 Paris')
puts "saving Laura's wish..."
lauras_wish.save!
puts "Wish saved successfully!"

puts "Creating Perle's wish..."
perles_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: sixth_user.id,
                       location: '130 Rue du Chemin Vert, 75011 Paris')
puts "saving Perle's wish..."
perles_wish.save!
puts "Wish saved successfully!"

puts "Creating Anne's wish..."
annes_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: seventh_user.id,
                       location: '2-14 Rue Fromentin, 75009 Paris')
puts "saving Anne's wish..."
annes_wish.save!
puts "Wish saved successfully!"

puts "Creating Christelle's wish..."
christelles_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: eigth_user.id,
                       location: '14 Rue Ballu, 75009 Paris')
puts "saving Christelle's wish..."
christelles_wish.save!
puts "Wish saved successfully!"

puts "Creating Paula's wish..."
paulas_wish = Wish.new(date: Date.today,
                       sport_id: running.id,
                       user_id: ninth_user.id,
                       location: '2 Rue de Birague, 75004 Paris')
puts "saving Paula's wish..."
paulas_wish.save!
puts "Wish saved successfully!"
puts "running Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: petanque.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating Christina's wish..."
christinas_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: tenth_user.id,
                       location: '14 Rue Saint-Louis, 75004 Paris')
puts "saving Christina's wish..."
christinas_wish.save!
puts "Wish saved successfully!"

puts "Creating Terry's wish..."
terrys_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: eleventh_user.id,
                       location: '4-14 Rue Messidor, 75012 Paris')
puts "saving Terry's wish..."
terrys_wish.save!
puts "Wish saved successfully!"

puts "Creating Delphine's wish..."
delphines_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: twelveth_user.id,
                       location: '25 Bd de Reuilly, 75012 Paris')
puts "saving Delphine's wish..."
delphines_wish.save!
puts "Wish saved successfully!"

puts "Creating Marie's wish..."
maries_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: thirteenth_user.id,
                       location: '176 Rue de Paris, 94220 Charenton-le-Pont')
puts "saving Marie's wish..."
maries_wish.save!
puts "Wish saved successfully!"

puts "Creating Hortence's wish..."
hortences_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: fourteenth_user.id,
                       location: '108 Av. de France, 75013 Paris')
puts "saving Hortence's wish..."
hortences_wish.save!
puts "Wish saved successfully!"

puts "Creating Maud's wish..."
mauds_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: nineteenth_user.id,
                       location: '15 Rue Maurice de la Sizeranne, 75015 Paris')
puts "saving Maud's wish..."
mauds_wish.save!
puts "Wish saved successfully!"

puts "Creating Rania's wish..."
ranias_wish = Wish.new(date: Date.today,
                       sport_id: petanque.id,
                       user_id: sixteenth_user.id,
                       location: '32 Rue Jean-Pierre Timbaud, 75011 Paris')
puts "saving Rania's wish..."
ranias_wish.save!
puts "Wish saved successfully!"
puts "petanque Wishes saved successfuly!"

# puts "Creating Charlotte's wish..."
# charlottes_wish = Wish.new(date: Date.today,
#                            sport_id: ping_pong.id,
#                            user_id: first_user.id,
#                            location: '16 villa gaudelet, paris')
# puts "saving Charlotte's wish..."
# charlottes_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Diane's wish..."
# dianes_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: second_user.id,
#                        location: 'Pl. des Vosges, 75003 Paris')
# puts "saving Diane's wish..."
# dianes_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Anne's wish..."
# annes_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: seventh_user.id,
#                        location: '2-14 Rue Fromentin, 75009 Paris')
# puts "saving Anne's wish..."
# annes_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Christelle's wish..."
# christelles_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: eigth_user.id,
#                        location: '14 Rue Ballu, 75009 Paris')
# puts "saving Christelle's wish..."
# christelles_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Paula's wish..."
# paulas_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: ninth_user.id,
#                        location: '2 Rue de Birague, 75004 Paris')
# puts "saving Paula's wish..."
# paulas_wish.save!
# puts "Wish saved successfully!"

# puts "Creating christina's wish..."
# christinas_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: tenth_user.id,
#                        location: '14 Rue Saint-Louis, 75004 Paris')
# puts "saving christina's wish..."
# christinas_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Terry's wish..."
# terrys_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: eleventh_user.id,
#                        location: '4-14 Rue Messidor, 75012 Paris')
# puts "saving Terry's wish..."
# terrys_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Delphine's wish..."
# delphines_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: twelveth_user.id,
#                        location: '25 Bd de Reuilly, 75012 Paris')
# puts "saving Delphine's wish..."
# delphines_wish.save!
# puts "Wish saved successfully!"

# puts "Creating Marie's wish..."
# maries_wish = Wish.new(date: Date.today,
#                        sport_id: ping_pong.id,
#                        user_id: thirteenth_user.id,
#                        location: '176 Rue de Paris, 94220 Charenton-le-Pont')
# puts "saving Marie's wish..."
# maries_wish.save!
# puts "Wish saved successfully!"
# puts "ping pong Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: horse_riding.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating Hortence's wish..."
hortences_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: fourteenth_user.id,
                       location: '108 Av. de France, 75013 Paris')
puts "saving Hortence's wish..."
hortences_wish.save!
puts "Wish saved successfully!"

puts "Creating Maud's wish..."
mauds_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: nineteenth_user.id,
                       location: '15 Rue Maurice de la Sizeranne, 75015 Paris')
puts "saving Maud's wish..."
mauds_wish.save!
puts "Wish saved successfully!"

puts "Creating Rania's wish..."
ranias_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: sixteenth_user.id,
                       location: '32 Rue Jean-Pierre Timbaud, 75011 Paris')
puts "saving Rania's wish..."
ranias_wish.save!
puts "Wish saved successfully!"

puts "Creating Catherine's wish..."
catherines_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: third_user.id,
                       location: '3 Rue de Vaugirard, 75006 Paris')
puts "saving Catherine's wish..."
catherines_wish.save!
puts "Wish saved successfully!"

puts "Creating Camille's wish..."
camilles_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: eighteenth_user.id,
                       location: '2-12 Imp. Baudran, 75013 Paris')
puts "saving Camille's wish..."
camilles_wish.save!
puts "Wish saved successfully!"

puts "Creating Kelly's wish..."
kellys_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: fourth_user.id,
                       location: '45-43 Rue de la Procession, 75015 Paris')
puts "saving Kelly's wish..."
kellys_wish.save!
puts "Wish saved successfully!"

puts "Creating Stella's wish..."
stellas_wish = Wish.new(date: Date.today,
                       sport_id: horse_riding.id,
                       user_id: seventeenth_user.id,
                       location: '28-40 Av. de la Bourdonnais, 75007 Paris')
puts "saving Stella's wish..."
stellas_wish.save!
puts "Wish saved successfully!"
puts "Horse riding Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: ping_pong.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating Anne's wish..."
annes_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: seventh_user.id,
                       location: '2-14 Rue Fromentin, 75009 Paris')
puts "saving Anne's wish..."
annes_wish.save!
puts "Wish saved successfully!"

puts "Creating Christelle's wish..."
christelles_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: eigth_user.id,
                       location: '14 Rue Ballu, 75009 Paris')
puts "saving Christelle's wish..."
christelles_wish.save!
puts "Wish saved successfully!"

puts "Creating Paula's wish..."
paulas_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: ninth_user.id,
                       location: '2 Rue de Birague, 75004 Paris')
puts "saving Paula's wish..."
paulas_wish.save!
puts "Wish saved successfully!"

puts "Creating christina's wish..."
christinas_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: tenth_user.id,
                       location: '14 Rue Saint-Louis, 75004 Paris')
puts "saving christina's wish..."
christinas_wish.save!
puts "Wish saved successfully!"

puts "Creating Terry's wish..."
terrys_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: eleventh_user.id,
                       location: '4-14 Rue Messidor, 75012 Paris')
puts "saving Terry's wish..."
terrys_wish.save!
puts "Wish saved successfully!"

puts "Creating Delphine's wish..."
delphines_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: twelveth_user.id,
                       location: '25 Bd de Reuilly, 75012 Paris')
puts "saving Delphine's wish..."
delphines_wish.save!
puts "Wish saved successfully!"

puts "Creating Marie's wish..."
maries_wish = Wish.new(date: Date.today,
                       sport_id: ping_pong.id,
                       user_id: thirteenth_user.id,
                       location: '176 Rue de Paris, 94220 Charenton-le-Pont')
puts "saving Marie's wish..."
maries_wish.save!
puts "Wish saved successfully!"
puts "ping pong Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: golf.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating paume's wish..."
paumes_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: fifth_user.id,
                       location: '43-39 Rue François 1er, 75008 Paris')
puts "saving paume's wish..."
paumes_wish.save!
puts "Wish saved successfully!"

puts "Creating laura's wish..."
lauras_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: fifteenth_user.id,
                       location: 'Rue de Berri, 75008 Paris')
puts "saving laura's wish..."
lauras_wish.save!
puts "Wish saved successfully!"

puts "Creating perle's wish..."
perles_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: sixth_user.id,
                       location: '130 Rue du Chemin Vert, 75011 Paris')
puts "saving perle's wish..."
perles_wish.save!
puts "Wish saved successfully!"

puts "Creating anne's wish..."
annes_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: seventh_user.id,
                       location: '2-14 Rue Fromentin, 75009 Paris')
puts "saving anne's wish..."
annes_wish.save!
puts "Wish saved successfully!"

puts "Creating christelle's wish..."
christelles_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: eigth_user.id,
                       location: '14 Rue Ballu, 75009 Paris')
puts "saving christelle's wish..."
christelles_wish.save!
puts "Wish saved successfully!"

puts "Creating paula's wish..."
paulas_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: ninth_user.id,
                       location: '2 Rue de Birague, 75004 Paris')
puts "saving paula's wish..."
paulas_wish.save!
puts "Wish saved successfully!"

puts "Creating christina's wish..."
christinas_wish = Wish.new(date: Date.today,
                       sport_id: golf.id,
                       user_id: tenth_user.id,
                       location: '14 Rue Saint-Louis, 75004 Paris')
puts "saving christina's wish..."
christinas_wish.save!
puts "Wish saved successfully!"
puts "Golf Wishes saved successfuly!"

puts "Creating Charlotte's wish..."
charlottes_wish = Wish.new(date: Date.today,
                           sport_id: cycling.id,
                           user_id: first_user.id,
                           location: '16 villa gaudelet, paris')
puts "saving Charlotte's wish..."
charlottes_wish.save!
puts "Wish saved successfully!"

puts "Creating Diane's wish..."
dianes_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: second_user.id,
                       location: 'Pl. des Vosges, 75003 Paris')
puts "saving Diane's wish..."
dianes_wish.save!
puts "Wish saved successfully!"

puts "Creating terry's wish..."
terrys_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: eleventh_user.id,
                       location: '4-14 Rue Messidor, 75012 Paris')
puts "saving terry's wish..."
terrys_wish.save!
puts "Wish saved successfully!"

puts "Creating delphine's wish..."
delphines_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: twelveth_user.id,
                       location: '25 Bd de Reuilly, 75012 Paris')
puts "saving delphine's wish..."
delphines_wish.save!
puts "Wish saved successfully!"

puts "Creating marie's wish..."
maries_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: thirteenth_user.id,
                       location: '176 Rue de Paris, 94220 Charenton-le-Pont')
puts "saving marie's wish..."
maries_wish.save!
puts "Wish saved successfully!"

puts "Creating hortence's wish..."
hortences_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: fourteenth_user.id,
                       location: '108 Av. de France, 75013 Paris')
puts "saving hortence's wish..."
hortences_wish.save!
puts "Wish saved successfully!"

puts "Creating maud's wish..."
mauds_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: nineteenth_user.id,
                       location: '15 Rue Maurice de la Sizeranne, 75015 Paris')
puts "saving maud's wish..."
mauds_wish.save!
puts "Wish saved successfully!"

puts "Creating rania's wish..."
ranias_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: sixteenth_user.id,
                       location: '32 Rue Jean-Pierre Timbaud, 75011 Paris')
puts "saving rania's wish..."
ranias_wish.save!
puts "Wish saved successfully!"

puts "Creating catherine's wish..."
catherines_wish = Wish.new(date: Date.today,
                       sport_id: cycling.id,
                       user_id: third_user.id,
                       location: '3 Rue de Vaugirard, 75006 Paris')
puts "saving catherine's wish..."
catherines_wish.save!
puts "Wish saved successfully!"
puts "Cycling Wishes saved successfuly!"

# puts "creating diane's like toward charlotte's wish"
# Like.create!(wish: charlottes_wish, uforth_user)
# puts 'likes done!'
# puts "Creating Le Wagon match"
# le_wagon_match = Match.create!(location: location_cycling)
# puts "Match created successfully!"

# puts "updating charlottes_wish..."
# charlottes_wish.update(match: le_wagon_match)
# puts "charlottes_wish updated successfully!"
# puts "Updating dianes_wish..."
# dianes_wish.update(match: le_wagon_match)
# puts "dianes_wish updated successfully!"


# 20.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user.username}_#{user.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user.username}..."
#   user_first.save!
#   puts "#{user.username} saved successfully!"
#   sport = SPORTS_ARRAY.sample
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Creating user..."
#   user = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user.photo.attach(io: user_photo, filename: "#{user.username}_#{user.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user.username}..."
#   user.save!
#   puts "#{user.username} saved successfully!"
#   location = Location.where(sport_id: sport.id)
#   puts "Creating first user wish..."
#   second_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   second_wish.save!
#   # puts "creating user's likes toward other's wish"
#   # Like.create!(wish: first_wish, user: user_first)
#   # puts 'likes done!'
# end
# cycling_wish = []
# 10.times do
#   puts "Creating cycling wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: cycling.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{cycling.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   cycling_wish << wish
#   puts "Wish put in cycling array!"
# end

# football_wish = []
# 12.times do
#   puts "Creating football wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: football.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{football.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   football_wish << wish
#   puts "Wish put in football array!"
# end

# basketball_wish = []
# 11.times do
#   puts "Creating basketball wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: basketball.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{basketball.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   basketball_wish << wish
#   puts "Wish put in basketball array!"
# end

# tennis_wish = []


# 10.times do
#   puts "Creating tennis wish..."
#   user = User.all.pluck(:id).sample

#   unless user.wish.flat_map(&:sport).include?(tennis)
#     wish = Wish.new(date: Date.today,
#                     sport_id: tennis.id,
#                     user: user,
#                     location: Location.all.pluck(:address).sample)
#   end
#   puts "saving wish for #{tennis.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   tennis_wish << wish
#   puts "Wish put in tennis array!"
# end

# running_wish = []
# 6.times do
#   puts "Creating running wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: running.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{running.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   running_wish << wish
#   puts "Wish put in running array!"
# end

# petanque_wish = []
# 5.times do
#   puts "Creating petanque wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: petanque.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{petanque.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   petanque_wish << wish
#   puts "Wish put in petanque array!"
# end

# horse_riding_wish = []
# 3.times do
#   puts "Creating horse_riding wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: horse_riding.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{horse_riding.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   horse_riding_wish << wish
#   puts "Wish put in horse riding array!"
# end

# horse_riding_wish = []
# 4.times do
#   puts "Creating ping_pong wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: ping_pong.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{ping_pong.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   ping_pong_wish << wish
#   puts "Wish put in ping pong array!"
# end

# golf_wish = []
# 8.times do
#   puts "Creating golf wish..."
#   user = User.all.pluck(:id).sample
#   wish = Wish.new(date: Date.today,
#                   sport_id: golf.id,
#                   user_id: user,
#                   location: Location.all.pluck(:address).sample)
#   puts "saving wish for #{golf.name}"
#   wish.save!
#   puts "Wish saved successfully!"
#   golf_wish << wish
#   puts "Wish put in golf array!"
# end


# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[0]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose random user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

  # puts "Creating first's match"
  # first_match = Match.create!(location: location.first)
  # puts "Match created successfully!"

  # puts "updating first's wish..."
  # first_wish.update(match: first_match)
  # puts "first_wish updated successfully!"

  # puts "Updating second's wish..."
  # second_wish.update(match: first_match)
  # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[1]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[2]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[3]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[4]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[5]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[6]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.unique.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[7]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 3.times do
#   puts "Creating user..."
#   user_first = User.new(username: Faker::Name.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on first user...'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_first.photo.attach(io: user_photo, filename: "#{user_first.username}_#{user_first.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_first.username}..."
#   user_first.save!
#   puts "#{user_first.username} saved successfully!"
#   puts "Creating user..."
#   user_second = User.new(username: Faker::Name.female_first_name,
#                   email: Faker::Internet.unique.email,
#                   password: "123456",
#                   age: rand(18..45))
#   puts 'attaching photos on second user....'
#   user_photo = URI.open("https://source.unsplash.com/collection/1712483/girl")
#   user_second.photo.attach(io: user_photo, filename: "#{user_second.username}_#{user_second.email}_photo.jpeg", content_type: 'image/jpeg')
#   puts "saving #{user_second.username}..."
#   user_second.save!
#   puts "#{user_second.username} saved successfully!"
#   sport = SPORTS_ARRAY[8]
#   location = Location.where(sport_id: sport.id)
#   date = Date.today
#   puts "Creating first user wish..."
#   first_wish = Wish.new(date: date,
#                         sport_id: sport.id,
#                         user_id: user_first.id,
#                         location: Location.all.pluck(:address).sample)
#   puts "saving first_user's past wish..."
#   first_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose second user..."
#   puts "Creating second's past wish..."
#   second_wish = Wish.new(date: date,
#                          sport_id: sport.id,
#                          user_id: user_second.id,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving second's past wish..."
#   second_wish.save!
#   puts "Second wish saved successfully!"

#   # puts "Creating first's match"
#   # first_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating first's wish..."
#   # first_wish.update(match: first_match)
#   # puts "first_wish updated successfully!"

#   # puts "Updating second's wish..."
#   # second_wish.update(match: first_match)
#   # puts "second_wish updated successfully!"
# end

# 5.times do
#   sport = SPORTS_ARRAY.sample
#   location = Location.where(sport_id: sport.id)
#   random_date = Date.today - (rand * 21)
#   puts "Creating Charlotte's past wish..."
#   charlottes_wish = Wish.new(date: random_date,
#                              sport_id: sport.id,
#                              user_id: first_user.id,
#                              location: '16 villa gaudelet, paris')
#   puts "saving Charlotte's past wish..."
#   charlottes_wish.save!
#   puts "Past wish saved successfully!"
#   puts "choose random user..."
#   random_user = User.all.pluck(:id).sample
#   puts "Creating random's past wish..."
#   random_wish = Wish.new(date: random_date,
#                          sport_id: sport.id,
#                          user_id: random_user,
#                          location: Location.all.pluck(:address).sample)
#   puts "saving random's past wish..."
#   random_wish.save!
#   puts "Past wish saved successfully!"

#   # puts "Creating charlotte's match"
#   # le_wagon_match = Match.create!(location: location.first)
#   # puts "Match created successfully!"

#   # puts "updating charlotte's wish..."
#   # charlottes_wish.update(match: le_wagon_match)
#   # puts "charlottes_wish updated successfully!"

#   # puts "Updating random's wish..."
#   # random_wish.update(match: le_wagon_match)
#   # puts "random_wish updated successfully!"
# end


puts "Et mercé les T-A !"
