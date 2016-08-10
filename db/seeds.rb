# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Artists
jessica = Artist.create({name: 'Jessica', description: 'All about photography.', photo_url:'http://i.imgur.com/Ioj3BZf.jpg'})
melaku = Artist.create({name: 'Melaku', description: 'Art is so special because it enables us to utilize our greatest birth-rite: the ability to create!', photo_url:'http://i.imgur.com/G5WM7nT.jpg'})
kristin = Artist.create({name: 'Kristin', description: 'I like to paint.', photo_url:'http://i.imgur.com/hTF4g1V.jpg?1'})

# Art pieces
directions = Art.create({name: 'Directions', description: 'Which path would you take? If not too obvious, this was shot during my vacation in New York. The ambience was perfecto!', photo_url:'http://i.imgur.com/cmlzeq4.jpg', artist: jessica})

fall = Art.create({name: 'Fall', description: 'The colors are warm and fuzzy. Shot with a 50mm lens. Aperture f/1.8.', photo_url:'http://i.imgur.com/QV8zYKd.jpg', artist: jessica})

silent = Art.create({name: 'Silent Passerby', description: "Silence is never silent. It makes its presence known. Do you ever question silence? Then silence isn't silent.", photo_url:'http://i.imgur.com/iEjN2zg.jpg', artist: melaku})

one = Art.create({name: 'The One', description: "One day they'll know.", photo_url:'http://i.imgur.com/46dLtON.jpg', artist: melaku})

life = Art.create({name: 'Life', description: "There's something out there. This art piece was created with soft pastel and charcoal.", photo_url:'http://i.imgur.com/84OSVeK.jpg?2', artist: kristin})

wilderness = Art.create({name: 'Wilderness', description: 'Not all who wander are lost. This piece was inspired by a friend full of mystery and depth.', photo_url:'http://i.imgur.com/yoYpV1z.jpg?1', artist: kristin})

# Musicians
rashad = Musician.create({name: 'Rashad', description: "Rappin' the trappin'", photo_url:'http://i.imgur.com/7HorrIW.jpg'})
ben = Musician.create({name: 'Ben', description: 'I write alternative rock.', photo_url:'http://i.imgur.com/cSnGVzr.jpg'})
tyson = Musician.create({name: 'Tyson', description: 'I like to play the piano.', photo_url:'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAkXAAAAJDVlOTRhZTE1LWRhMzctNGE5My1iMzJjLTViOTE4MTkzY2E2Yg.jpg'})

# Music pieces
atm = Music.create({name: 'ATM (Prod. Pentagrvm)', description: 'Features: @kamiyada, @SlimVicious, @Nyronthehonest. Producers: @pentagrvm, @the-virus-uk, @khalil-byous, @jcardenas96, @davelength, @yungsvge, @justmeek, @innerheem', photo_url:'https://i1.sndcdn.com/artworks-000174099349-80f6yw-t500x500.jpg', preview_url: 'http://a1748.phobos.apple.com/us/r1000/074/Music/d4/97/e7/mzm.bigdtgoz.aac.p.m4a', musician: rashad})

# Collabs
cloud = Collab.create({title: 'The Cloud', description: "This was created for Ben's new album. Jessica created this piece with illustrator.", photo_url: 'http://i.imgur.com/UxzRgNZ.jpg', artist: jessica, musician: ben})
