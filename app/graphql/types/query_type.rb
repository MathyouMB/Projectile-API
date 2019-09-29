module Types
  class QueryType < Types::BaseObject
   
    field :users, [UserType], null: true do
      description "Get all Users"
    end

    def users
      User.all
    end

    field :projects, [ProjectType], null: true do
      description "Get all projects"
    end

    def projects
      Project.all
    end

    field :requests, [RequestType], null: true do
      description "Get all requests"
    end

    def requests
      Request.all
    end

    field :skills, [SkillType], null: true do
      description "Get all skills"
    end

    def skills
      Skill.all
    end

  end
end
