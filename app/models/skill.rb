class Skill < ApplicationRecord

    #name
    #colour
    has_and_belongs_to_many :users
    has_and_belongs_to_many :projects
    has_and_belongs_to_many :requests
end
