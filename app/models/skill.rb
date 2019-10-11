class Skill < ApplicationRecord

    #name:string
    #colour:string

    has_and_belongs_to_many :users
    has_and_belongs_to_many :projects
    has_and_belongs_to_many :requests
end
