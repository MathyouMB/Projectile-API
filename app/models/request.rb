class Request < ApplicationRecord
    
    #title:string
    #description:string

    belongs_to :project
    has_and_belongs_to_many :skills
end
