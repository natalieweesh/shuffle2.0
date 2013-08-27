# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Song.create(title:"Seaside", artist:"The Kooks")
Song.create(title:"Belly Button", artist:"Sufjan Stevens")
Song.create(title:"Yearnin", artist:"The Black Keys")
Song.create(title:"Little Room", artist:"The White Stripes")
Song.create(title:"Teo Licks", artist:"Amy Winehouse")
Song.create(title:"Two Veils To Hide My Face", artist:"Passion Pit")
Song.create(title:"Fantasy", artist:"The XX")
Song.create(title:"Interlude", artist:"Muse")
Song.create(title:"A Hopeful Transmission", artist:"Coldplay")
Song.create(title:"Cross Eyes", artist:"Phantom Planet")


5.times do |i|
  User.create([email: "#{i}@abc.com", password: "12345678"])
end

5.times do |i|
  UserUploaded.create(user_id: "#{i}", song_id: "#{i}")
end

5.times do |i|
  UserHistory.create(user_id: "#{10 - i}", song_id: "#{i}")
end
