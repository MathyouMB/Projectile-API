module Mutations
    class CreateRequest < BaseMutation
      argument :project_id, ID, required: true
      argument :title, String, required: true
      argument :description, String, required: true
    
      type Types::RequestType
  
      def resolve(project_id:nil, title: nil, description: nil) 
        
        Request.create!(
          project_id:project_id,
          title: title,
          description: description,
        )
      end
    end
  end