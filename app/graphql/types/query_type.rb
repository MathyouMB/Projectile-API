module Types
  class QueryType < Types::BaseObject
   
    field :users, [UserType], null: true do
      description "Get all Users"
    end

    def users
      User.all
    end

    field :user, [UserType], null: true do
      description "Get a specific user"
      argument :id, ID, required: true
    end

    def user(id:)
      User.where(id: id)
    end

    field :projects, [ProjectType], null: true do
      description "Get all projects"
    end

    def projects
      Project.all
    end

    field :projectmatch, [ProjectType], null: true do
      argument :id, ID, required: true
      description "Get projects that match the skills of a specific user based on user id"
    end

    def projectmatch(id:)
      
      skills = User.find(id).skill_ids
      projects = Project.all   
      returnProjects = Array.new
      usedIDS = Array.new

      projects.each do |project|
        skills.each do |skill|
          if((project.skill_ids.include? skill) and (!usedIDS.include? project.id) and (project.user_id.to_s != id.to_s))
            returnProjects.push(project)
            usedIDS.push(project.id)
          end
        end
      end

      return(returnProjects)
    end

    field :requests, [RequestType], null: true do
      description "Get all requests"
    end

    def requests
      Request.all
    end
=begin
    field :requestmatch, [RequestType], null: true do
      argument :id, ID, required: true
      description "Get requests that match the skills of a specific user based on user id"
    end

    def requestmatch(id:)
      
      skills = User.find(id).skill_ids
      requests = Request.all   
      returnRequests = Array.new
      usedIDS = Array.new

      requests.each do |request|
        skills.each do |skill|
          requestProject = Project.where(id:request.project_id);
          if((request.skill_ids.include? skill) and (!usedIDS.include? request.id) and (requestProject.user_id.to_s != id.to_s))
            returnRequests.push(request)
            usedIDS.push(request.id)
          end
        end
      end

      return(returnRequests)
    end
=end
    field :skills, [SkillType], null: true do
      description "Get all skills"
    end

    def skills
      Skill.all
    end

  end
end
