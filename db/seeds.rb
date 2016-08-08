# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jessica = Artist.create({name: 'Jessica', description: 'Digital art is my passion.', photo_url:''})

ben = Musician.create({name: 'Ben', description: 'I write alternative rock.', photo_url:''})

cloud = Collab.create({title: 'The Cloud', description: "This was created for Ben's new album. Jessica created this piece with illustrator.", photo_url: ''})
