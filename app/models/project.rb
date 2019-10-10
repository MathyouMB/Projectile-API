class Project < ApplicationRecord
    belongs_to :user
    has_many :requests
    #has_many :skills
    has_and_belongs_to_many :skills
end
