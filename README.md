user

    username:string
    email:string
    password:string ~ bcrypt
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


