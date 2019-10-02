module Mutations
    class CreateProject < BaseMutation
      argument :title, String, required: true
      argument :description, String, required: true
      argument :url, String, required: true
    
      type Types::ProjectType
  
      def resolve(title: nil, description: nil, url: nil) 
        
        Project.create!(
          title: title,
          description: description,
          url: url,
          user: context[:current_user]
        )
      end
    end
  end