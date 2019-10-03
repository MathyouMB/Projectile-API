module Mutations
    class Mutations::DeleteRequest < Mutations::BaseMutation
        argument :id, ID, required: true
      
        field :request, Types::RequestType, null: false
        field :errors, [String], null: false
      
        def resolve(id:)
            request = Request.find(id)
            request.destroy
            {
              request: request,
              errors: [],
            }
            
        end
      end
    end