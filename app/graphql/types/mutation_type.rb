module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser,description: "Create a user."
    field :signin_user, mutation: Mutations::SignInUser,description: "Signs in mutation."
  end
end
