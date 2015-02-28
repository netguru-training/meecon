10.times do
  Category.create!(name: Faker::HipsterIpsum.words(2).join(' '))
end

5.times do
  User.create!(
    email: Faker::Internet.email,
    name: Faker::Name.name
  )
end

categories = Category.all
users = User.all
pictures = ["http://images5.fanpop.com/image/polls/984000/984250_1332733386906_full.jpg", "https://s-media-cache-ak0.pinimg.com/736x/90/4b/84/904b84264574e016b1a01f7f7884c7e5.jpg", "https://pbs.twimg.com/profile_images/508493663538663424/48ylBWS0.jpeg", "http://www.ashlee-star.com/download/pictures/08.jpg", "http://www.ifishalaskasalmon.com/wp-content/themes/striking_r/cache/images/371_Lauren-450x250.jpg", "http://explosionhub.com/wp-content/uploads/2012/06/Stylish-Colorful-Display-Pictures-for-Girls-and-Guys-style.pk-007-450x250.jpg",
 "http://cdn.filmtrackonline.com/voltage/starcm_vault_root/images/%7Ba5e8dec8-73ca-4978-af89-5cae99554a05%7D/kristen_stewart_pictures_%7Bd5e824ad-e392-e111-ba52-5296b839ed91%7D.jpg"]

random = Random.new
200.times do
  picture_url = pictures[rand(pictures.size)]
  date = rand(100).days.from_now
  Event.create!(
    picture: URI.parse(picture_url),
    title: Faker::HipsterIpsum.words(3).join(' '),
    place: Faker::Address.city + " " + Faker::Address.country,
    beginning_at: date,
    end_at: date + 2.days,
    category: categories.sample,
    description: Faker::Lorem.sentences(20).join(' '),
    user: users.sample
  )
end
