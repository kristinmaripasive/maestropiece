# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jessica = Artist.create({name: 'Jessica', description: 'Digital art is my passion.', photo_url:'http://i.imgur.com/Ioj3BZf.jpg'})
kristin = Artist.create({name: 'Kristin', description: 'I like to paint', photo_url:'http://i.imgur.com/fg9oguAg.jpg'})




ben = Musician.create({name: 'Ben', description: 'I write alternative rock.', photo_url:''})
tyson = Musician.create({name: 'Tyson', description: 'I like to play the piano', photo_url:'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAkXAAAAJDVlOTRhZTE1LWRhMzctNGE5My1iMzJjLTViOTE4MTkzY2E2Yg.jpg'})

cloud = Collab.create({title: 'The Cloud', description: "This was created for Ben's new album. Jessica created this piece with illustrator.", photo_url: '', artist: kristin, musician: ben})
