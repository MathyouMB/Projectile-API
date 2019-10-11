class Project < ApplicationRecord
    
    #title:string
    #url:string
    #description:string

    belongs_to :user
    has_many :requests
    has_and_belongs_to_many :skills
end
