# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jessica = Artist.create({name: 'Jessica', description: 'All about photography.', photo_url:'http://i.imgur.com/Ioj3BZf.jpg'})
melaku = Artist.create({name: 'Melaku', description: 'Digital art is my passion.', photo_url:'http://i.imgur.com/G5WM7nT.jpg'})
kristin = Artist.create({name: 'Kristin', description: 'I like to paint.', photo_url:'http://i.imgur.com/QmLGjKV.jpg'})





ben = Musician.create({name: 'Ben', description: 'I write alternative rock.', photo_url:'http://i.imgur.com/cSnGVzr.jpg'})
tyson = Musician.create({name: 'Tyson', description: 'I like to play the piano.', photo_url:'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAkXAAAAJDVlOTRhZTE1LWRhMzctNGE5My1iMzJjLTViOTE4MTkzY2E2Yg.jpg'})

cloud = Collab.create({title: 'The Cloud', description: "This was created for Ben's new album. Jessica created this piece with illustrator.", photo_url: 'http://i.imgur.com/UxzRgNZ.jpg', artist: jessica, musician: ben})
