puts "Deleting everything"
  User.destroy_all
  Member.destroy_all
  Family.destroy_all
  Post.destroy_all
  FamilyUser.destroy_all
puts "Creating users"

picture_millie = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1599328348/rsm5g0bk6bv4x4ilk8un216j9wkl.jpg')
picture_max = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1605633331/13246192_10207775228395889_9199940874989934030_o_kgqbeb.jpg')

millie = User.create!(email: "millie@email.com", password: "123456", first_name: "Millie", last_name: "Senecal", birthday: "2000-02-20")
max = User.create!(email: "max@email.com", password: "123456", first_name: "Maxime", last_name: "Orefice", birthday: "1998-04-26")

millie.photo.attach(io: picture_millie, filename: 'millie.jpg', content_type: 'image/jpg')
max.photo.attach(io: picture_max, filename: 'max.jpg', content_type: 'image/jpg')

