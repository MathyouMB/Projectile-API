
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


Skill.create({ 
  name: "React",
  colour: "#E2C800"
})

Skill.create({ 
  name: "Typescript",
  colour: "#007ACC"
})

Skill.create({ 
  name: "Sass",
  colour: "#CD6799"
})

Skill.create({ 
  name: "Java",
  colour: "#A36D47"
})

Skill.create({ 
  name: "JavaFX",
  colour: "#FF6A00"
})

Skill.create({ 
  name: "Python",
  colour: "#3161B2"
})

Skill.create({ 
  name: "Flask",
  colour: "#164D61"
})

Skill.create({ 
  name: "Materialize",
  colour: "#EC6D74"
})

Skill.create({ 
  name: "C#",
  colour: "#18871A"
})

Skill.create({ 
  name: "MySQL",
  colour: "#5D87A1"
})

Skill.create({ 
  name: "Flask",
  colour: "#164D61"
})

Skill.create({ 
  name: "Selenium",
    colour: "#707070"
})

Skill.create({ 
  name: "Bootstrap",
  colour: "#563D7C"
})

Skill.create({ 
  name: "C",
  colour: "#707070"
})

Skill.create({ 
  name: "C++",  
  colour: "#CD6799"
})

