module Types
  class MutationType < Types::BaseObject
    
    #user mutations
    field :create_user, mutation: Mutations::CreateUser,description: "Create a user."
    field :signin_user, mutation: Mutations::SignInUser,description: "Signs in mutation."
    
    #crud project mutations
    field :create_project, mutation: Mutations::CreateProject,description: "Create a new project"
    field :update_project, mutation: Mutations::UpdateProject,description: "Update a project"
    field :delete_project, mutation: Mutations::DeleteProject,description: "Delete a project"

    #crud request mutations
    field :create_request, mutation: Mutations::CreateRequest,description: "Create a new request"
    
    
  end
end
