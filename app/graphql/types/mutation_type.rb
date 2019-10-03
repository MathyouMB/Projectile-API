module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser,description: "Create a user."
    field :create_project, mutation: Mutations::CreateProject,description: "Create a new project"
    field :update_project, mutation: Mutations::UpdateProject,description: "Update a project"
    field :delete_project, mutation: Mutations::DeleteProject,description: "Delete a project"
    field :signin_user, mutation: Mutations::SignInUser,description: "Signs in mutation."
    
  end
end
