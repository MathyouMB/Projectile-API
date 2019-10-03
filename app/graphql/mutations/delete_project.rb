module Mutations
    class Mutations::DeleteProject < Mutations::BaseMutation
        argument :id, ID, required: true
      
        field :project, Types::ProjectType, null: false
        field :errors, [String], null: false
      
        def resolve(id:)
            project = Project.find(id)
            project.destroy
            {
              project: project,
              errors: [],
            }
            
        end
      end
    end