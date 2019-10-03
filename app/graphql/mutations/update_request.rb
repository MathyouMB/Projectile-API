module Mutations
    class Mutations::UpdateRequest < Mutations::BaseMutation
        argument :id, ID, required: true
        argument :title, String, required: true
        argument :description, String, required: true
      
        field :request, Types::RequestType, null: false
        field :errors, [String], null: false
      
        def resolve(title:,id:, description:)
           
            request = Request.find(id)
            
          if request.update(title: title, description: description)
            # Successful creation, return the created object with no errors
            {
              request: request,
              errors: [],
            }
          else
            # Failed save, return the errors to the client
            {
              request: nil,
              errors: request.errors.full_messages
            }
          end
        end
      end
    end