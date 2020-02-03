# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Artist.destroy
# Genre.destroy

5.times do Artist.create(name: Faker::Artist.name, bio: "this is a bio")
end 

5.times do Genre.create(name: Faker::Music.genre)
end 

5.times do Song.create(name: Faker::Music::RockBand.name, artist_id: rand(1..5) , genre_id: rand(1..5))
end 

# s1 = Song.create(name: "Hello2", artist_id: 1, genre_id: 1)
