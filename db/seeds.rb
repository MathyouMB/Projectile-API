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

3.times do
    User.create({
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "password", #very good password ;)
      skill_ids:[rand(1..2),rand(3..5),rand(6..9)]
    })
end

5.times do
    Project.create({
      title: Faker::Name.name,
      description: Faker::Lorem.sentence,
      url:"www.matthewmacraebovell.com",
      user_id: rand(1..3),
      skill_ids:[rand(1..3),rand(4..6),rand(6..9)]
    })
end

Project.create({
  title: "Stack Search",
  description: "A web application that crawls the web and indexes jobs based on technical skill set to simplify job searching for software developers.",
  url:"https://github.com/MathyouMB/StackSearch",
  user_id: rand(1..3),
  skill_ids:[6,7,11,12]
})

Project.create({
  title: "Sead",
  description: "A study app that will break up your lazily written notes and return them in an easy to read page by page format. ",
  url:"https://github.com/MathyouMB/Sead",
  user_id: rand(1..3),
  skill_ids:[6,7,8]
})

Project.create({
  title: "Connect Fources",
  description: "A connect four game where you can shift the force of gravity and discs break over time.",
  url:"www.connectfources.com",
  user_id: rand(1..3),
  skill_ids:[4,5]
})

10.times do
    Request.create({
      title: Faker::Name.name,
      description: Faker::Lorem.sentence,
      project_id: rand(1..5),
      skill_ids:[rand(1..3),rand(4..6),rand(6..9)]
    })
end




