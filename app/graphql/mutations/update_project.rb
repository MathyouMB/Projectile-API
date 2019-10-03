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
            p(project)
            #header = request.headers[:token]
            #decrypted = JWT.decode(header,Rails.application.secrets.secret_key_base.byteslice(0..31))[0]
            #currentUser = User.find_by(id: decrypted['id'])

            
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