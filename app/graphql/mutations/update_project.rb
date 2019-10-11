module Mutations
    class Mutations::UpdateProject < Mutations::BaseMutation
        argument :id, ID, required: true
        argument :title, String, required: true
        argument :url, String, required: true
        argument :description, String, required: true
      
        field :project, Types::ProjectType, null: false
        field :errors, [String], null: false
      
        def resolve(title:,id:, url:, description:)
           
            project = Project.find(id)
            
          if project.update(title: title, url: url, description: description)
            # Successful creation, return the created object with no errors
            {
              project: project,
              errors: [],
            }
          else
            # Failed save, return the errors to the client
            {
              project: nil,
              errors: project.errors.full_messages
            }
          end
        end
      end
    end