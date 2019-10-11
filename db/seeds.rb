#1
Skill.create({ 
  name: "React",
  colour: "#E2C800"
})
#2
Skill.create({ 
  name: "Typescript",
  colour: "#007ACC"
})
#3
Skill.create({ 
  name: "Sass",
  colour: "#CD6799"
})
#4
Skill.create({ 
  name: "Java",
  colour: "#A36D47"
})
#5
Skill.create({ 
  name: "JavaFX",
  colour: "#FF6A00"
})
#6
Skill.create({ 
  name: "Python",
  colour: "#3161B2"
})
#7
Skill.create({ 
  name: "Flask",
  colour: "#164D61"
})
#8
Skill.create({ 
  name: "Materialize",
  colour: "#EC6D74"
})
#9
Skill.create({ 
  name: "C#",
  colour: "#18871A"
})
#10
Skill.create({ 
  name: "MySQL",
  colour: "#5D87A1"
})
#11
Skill.create({ 
  name: "Selenium",
    colour: "#707070"
})
#12
Skill.create({ 
  name: "Bootstrap",
  colour: "#563D7C"
})
#13
Skill.create({ 
  name: "C",
  colour: "#707070"
})
#14
Skill.create({ 
  name: "C++",  
  colour: "#CD6799"
})
#15
Skill.create({ 
  name: "Ruby on Rails",  
  colour: "#701516"
})
=begin
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

10.times do
    Request.create({
      title: Faker::Name.name,
      description: Faker::Lorem.sentence,
      project_id: rand(1..5),
      skill_ids:[rand(1..3),rand(4..6),rand(6..9)]
    })
end
=end

User.create({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "password", 
  skill_ids:[1,2,6]
})

User.create({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "password", 
  skill_ids:[2,4,15]
})

User.create({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "password",
  skill_ids:[1,4,5,7]
})

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
  title: "Projectile",
  description: "A web application built to help you find projects and friends to develop with!",
  url:"https://github.com/MathyouMB/Projectile-API",
  user_id: rand(1..3),
  skill_ids:[1,10,15]
})

Project.create({
  title: "WorkOn",
  description: "Task management web app built with Rails, React, Typescript, and PostgreSQL",
  url:"https://github.com/MathyouMB/WorkOn",
  user_id: rand(1..3),
  skill_ids:[1,2,15]
})

Project.create({
  title: "Connect Fources",
  description: "A connect four game where you can shift the force of gravity and discs break over time.",
  url:"https://github.com/MathyouMB/ConnectFources",
  user_id: rand(1..3),
  skill_ids:[4,5]
})

Project.create({
  title: "Personal Portfolio",
  description: "My new in-development personal website built with React and Typescript.",
  url:"https://github.com/MathyouMB/Portfolio",
  user_id: rand(1..3),
  skill_ids:[1,2,3]
})

Request.create({
  title: "Rails Backend Developer",
  description: "Currently looking for a Rails developer to help develop new features.",
  project_id: 3,
  skill_ids:[10,15]
})

Request.create({
  title: "React Frontend Developer",
  description: "Looking for web developer with React and Typescript experience.",
  project_id: 4,
  skill_ids:[1,2]
})

Request.create({
  title: "React UI Developer",
  description: "Requesting help from a React developer with UI design experience.",
  project_id: 6,
  skill_ids:[1]
})

Request.create({
  title: "Automation Developer",
  description: "Looking for developers with past Python automation experience!",
  project_id: 1,
  skill_ids:[6,11]
})

Request.create({
  title: "Flask Developer",
  description: "Presently looking for someone who'd wanna help me build out my flask application!",
  project_id: 1,
  skill_ids:[6,7]
})

Request.create({
  title: "Python Backend Developer",
  description: "Looking backend developer who loves Python <3",
  project_id: 2,
  skill_ids:[6,7]
})

Request.create({
  title: "Game Developer",
  description: "Looking for Java developers interested in developing fun PC games.",
  project_id: 5,
  skill_ids:[4,5]
})





