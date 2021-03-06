class User < ApplicationRecord
  
    #users are required to have a name
    #users are required to have an email, email must be unique
    #users will have password encrypted by bcrpyt gem

    validates :name, presence: true 
    validates :email, presence: true, uniqueness: true
    has_secure_password 
    has_many :projects
    has_and_belongs_to_many :skills
    
end
