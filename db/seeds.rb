require 'date'
require 'open-uri'

puts "Deleting everything"
  User.destroy_all
  Family.destroy_all
  Member.destroy_all
  FamilyUser.destroy_all
  Post.destroy_all

puts "Creating users"

picture_millie = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1599328348/rsm5g0bk6bv4x4ilk8un216j9wkl.jpg')
picture_max = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633331/13246192_10207775228395889_9199940874989934030_o_kgqbeb.jpg')
picture_marie = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633937/smiling-woman-poses_kkxkbw.jpg')
picture_simone = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633938/person-in-front-of-white-sheet_vqja2r.jpg')
picture_sandro = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633939/man-with-hurt-feelings_nklstv.jpg')
picture_alphonse = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633939/smiling-man-in-blue_hi7t8t.jpg')
picture_pizz = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605634134/pizz_d5v5sr.jpg')

millie = User.create!(email: "millie@email.com", password: "123456", first_name: "Millie", last_name: "Orefice", birthday: "2000-02-20")
max = User.create!(email: "max@email.com", password: "123456", first_name: "Maxime", last_name: "Orefice", birthday: "1998-04-26")
marie = User.create!(email: "marie@email.com", password: "123456", first_name: "Marie", last_name: "Andre", birthday: "1995-04-26")
simone = User.create!(email: "simon@email.com", password: "123456", first_name: "Simon", last_name: "Dupont", birthday: "1993-05-27")
sandro = User.create!(email: "sandro@email.com", password: "123456", first_name: "Sandro", last_name: "Dupont", birthday: "1990-01-13")
alphonse = User.create!(email: "alphonse@email.com", password: "123456", first_name: "Aphonse", last_name: "Andre", birthday: "1987-12-08")
pizz = User.create!(email: "pizz@email.com", password: "123456", first_name: "Pizz", last_name: "Orefice", birthday: "2018-11-20")

millie.photo.attach(io: picture_millie, filename: 'millie.jpg', content_type: 'image/jpg')
max.photo.attach(io: picture_max, filename: 'max.jpg', content_type: 'image/jpg')
marie.photo.attach(io: picture_marie, filename: 'marie.jpg', content_type: 'image/jpg')
simone.photo.attach(io: picture_simone, filename: 'simone.jpg', content_type: 'image/jpg')
sandro.photo.attach(io: picture_sandro, filename: 'sandro.jpg', content_type: 'image/jpg')
alphonse.photo.attach(io: picture_alphonse, filename: 'alphonse.jpg', content_type: 'image/jpg')
pizz.photo.attach(io: picture_pizz, filename: 'pizz.jpg', content_type: 'image/jpg')

puts "User done"

puts "Creating families"
picture_family_orefice = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605632583/family_bo6avv.jpg')
orefice = Family.create!(name: "Super famille")
orefice.photo.attach(io: picture_family_orefice, filename: 'fam-orefice.jpg', content_type: 'image/jpg')

picture_family_dupont = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605632582/family2_z7a7i9.jpg')
dupont = Family.create!(name: "Famille Dupont")
dupont.photo.attach(io: picture_family_dupont, filename: 'fam-dupont.jpg', content_type: 'image/jpg')

picture_family_andre = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605642427/family-parents-grandparents-Morsa-Images-Taxi-56a906ad3df78cf772a2ef29_koj25m.jpg')
andre = Family.create!(name: "Famille Andre")
andre.photo.attach(io: picture_family_andre, filename: 'fam-andre.jpg', content_type: 'image/jpg')

puts "Families done"


puts "Creating members"

picture_huguette = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605642691/00fedec9-fda6-11ea-b8ad-02fe89184577_wo2wta.jpg')
huguette = Member.create!(first_name: "Huguette", last_name: "Mamie", birthday: "1935-04-07", address: "3 rue du Chateau, Nice", family: orefice)
huguette.photo.attach(io: picture_huguette, filename: 'huguette.jpg', content_type: 'image/jpg')

picture_claudette = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605632582/grandma_bncmon.jpg')
claudette = Member.create!(first_name: "Claudette", last_name: "Dupont", birthday: "1937-02-19", address: "14 rue du Chateau, Paris", family: dupont)
claudette.photo.attach(io: picture_claudette, filename: 'claudette.jpg', content_type: 'image/jpg')

picture_pascale = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605642693/baddie-wingle-la-mamie-dejantee-dont-les-people-sont-fans_qmqfms.jpg')
pascale = Member.create!(first_name: "Pascale", last_name: "Andre", birthday: "1932-12-11", address: "29 rue du Chateau, Orléans", family: andre)
pascale.photo.attach(io: picture_pascale, filename: 'pascale.jpg', content_type: 'image/jpg')

puts "Members done"

puts "Associated Family with Users"

FamilyUser.create!(family: orefice, user: millie)
FamilyUser.create!(family: orefice, user: max)
FamilyUser.create!(family: orefice, user: pizz)
FamilyUser.create!(family: dupont, user: marie)
FamilyUser.create!(family: dupont, user: alphonse)
FamilyUser.create!(family: andre, user: simone)
FamilyUser.create!(family: andre, user: sandro)

puts "Family Users Done"

puts "Create posts"

picture_post1 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1599328427/a6ikjt0vfktq7jlnz0xna7d8yj7d.jpg')
post1 = Post.create!(user: millie, description: "Enfin fini la belle cuisine !!!")
post1.photo.attach(io: picture_post1, filename: 'post1.jpg', content_type: 'image/jpg')

picture_post2 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605632582/family2_z7a7i9.jpg')
post2 = Post.create!(user: simone, description: "Superbe moment ensemble")
post2.photo.attach(io: picture_post2, filename: 'post2.jpg', content_type: 'image/jpg')

picture_post3 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1599328429/eqdw2euhzw1om0yccf1rzl9agbwl.jpg')
post3 = Post.create!(user: max, description: "Notre beau jardin vue de l'extérieur")
post3.photo.attach(io: picture_post3, filename: 'post3.jpg', content_type: 'image/jpg')

picture_post4 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1599328336/2llrgjhaf8xkn4jau6lu8agtc7lj.jpg')
post4 = Post.create!(user: max, description: "Notre belle maison vue oeijr ofor kdpawo frijg tu sopjf ojqr udgri jfngiuwer oidjksr oijznvi eojsoijr hud hdir rt.")
post4.photo.attach(io: picture_post4, filename: 'post4.jpg', content_type: 'image/jpg')

picture_post5 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605643401/54e1dd404c51ab14f1dc8460962e33791c3ad6e04e5074417d2e7ed6924bc4_640_qnmhay.jpg')
post5 = Post.create!(user: millie, description: "Oeijr ofor kdpawo frijg tu sopjf ojqr udgri jfngiuwer oidjksr oijznvi eojsoijr hud hdir rt.")
post5.photo.attach(io: picture_post5, filename: 'post5.jpg', content_type: 'image/jpg')

picture_post6 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605643401/52e0dc404c5ab10ff3d8992cc12c30771037dbf85254784b772872dc944f_640_ijoaeg.jpg')
post6 = Post.create!(user: millie, description: "Un jardinsup[er pour cet été.")
post6.photo.attach(io: picture_post6, filename: 'post6.jpg', content_type: 'image/jpg')

picture_post7 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605643401/53e4d0444d5aad14f1dc8460962e33791c3ad6e04e507440722d72d5954ec2_640_qy3dyo.jpg')
post7 = Post.create!(user: marie, description: "Un jardinsup[er pour cet été.")
post7.photo.attach(io: picture_post7, filename: 'post7.jpg', content_type: 'image/jpg')

picture_post8 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605643401/53e4d0444d5aad14f1dc8460962e33791c3ad6e04e507440722d72d5954ec2_640_qy3dyo.jpg')
post8 = Post.create!(user: sandro, description: "Un jardinsup[er pour cet été.")
post8.photo.attach(io: picture_post8, filename: 'post8.jpg', content_type: 'image/jpg')

puts "Posts done"

