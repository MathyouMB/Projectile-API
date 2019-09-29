
3.times do
    User.create({
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "password", #very good password ;)
    })
end

5.times do
    Project.create({
      title: Faker::Name.name,
      description: Faker::Lorem.sentence,
      url:"www.matthewmacraebovell.com",
      user_id: rand(1..3)
    })
end

10.times do
    Request.create({
      title: Faker::Name.name,
      description: Faker::Lorem.sentence,
      project_id: rand(1..5)
    })
end
