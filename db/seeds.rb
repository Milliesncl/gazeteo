puts "Deleting everything"
  User.destroy_all
  Member.destroy_all
  Family.destroy_all
  Post.destroy_all
  FamilyUser.destroy_all
puts "Creating users"

picture_millie = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1599328348/rsm5g0bk6bv4x4ilk8un216j9wkl.jpg')
picture_max = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633331/13246192_10207775228395889_9199940874989934030_o_kgqbeb.jpg')
picture_marie = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633937/smiling-woman-poses_kkxkbw.jpg')
picture_simone = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633938/person-in-front-of-white-sheet_vqja2r.jpg')
picture_sandro = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633939/man-with-hurt-feelings_nklstv.jpg')
picture_alphonse = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633939/smiling-man-in-blue_hi7t8t.jpg')
picture_pizz = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605634134/pizz_d5v5sr.jpg')


millie = User.create!(email: "millie@email.com", password: "123456", first_name: "Millie", last_name: "Senecal", birthday: "2000-02-20")
max = User.create!(email: "max@email.com", password: "123456", first_name: "Maxime", last_name: "Orefice", birthday: "1998-04-26")
marie = User.create!(email: "marie@email.com", password: "123456", first_name: "Marie", last_name: "Andre", birthday: "1995-04-26")
simone = User.create!(email: "simon@email.com", password: "123456", first_name: "Simon", last_name: "Dupont", birthday: "1993-05-27")
sandro = User.create!(email: "sandro@email.com", password: "123456", first_name: "Sandro", last_name: "Bernard", birthday: "1990-01-13")
alphonse = User.create!(email: "alphonse@email.com", password: "123456", first_name: "Aphonse", last_name: "Café", birthday: "1987-12-08")
pizz = User.create!(email: "pizz@email.com", password: "123456", first_name: "Pizz", last_name: "Orefice", birthday: "2018-11-20")

millie.photo.attach(io: picture_millie, filename: 'millie.jpg', content_type: 'image/jpg')
max.photo.attach(io: picture_max, filename: 'max.jpg', content_type: 'image/jpg')
marie.photo.attach(io: picture_marie, filename: 'marie.jpg', content_type: 'image/jpg')
simone.photo.attach(io: picture_simone, filename: 'simone.jpg', content_type: 'image/jpg')
sandro.photo.attach(io: picture_sandro, filename: 'sandro.jpg', content_type: 'image/jpg')
alphonse.photo.attach(io: picture_alphonse, filename: 'alphonse.jpg', content_type: 'image/jpg')
pizz.photo.attach(io: picture_pizz, filename: 'pizz.jpg', content_type: 'image/jpg')

