user

    name:string
    email:string
    password | password_digest:string ~ bcrypt
    have many projects

project

    title:string
    description:text
    url:string
    have many requests
    have many skills

requests
    
    title:string
    describition:text
    belongs to project
    have many skills

skill

    name:string
    color:string


create user

mutation{
  createUser(
    name: "Matthew"
    authProvider:{
      email:{
        email:"matthew@email.com",
        password:"123"
      }
    }
  ){
    id
    email
    name
  }
}

mutation{
  signinUser(
    email:{
      email:"matthew@email.com",
      password:"123"
    }
  ){
    token
    user{
      id
    }
  }
}

::global scope operator, goes to highest scope, finds model instead


users has and belongs to many skills
projects has and belongs to many skills
requests has and belongs to many skills

rails g migration CreateJoinTableCategoryProduct category product
rake db:drop db:create db:migrate db:seed
