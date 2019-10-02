module Mutations
  class SignInUser < BaseMutation
    null true

    argument :email, String, required: true
    argument :password, String, required: true

    field :token, String, null: true
    field :user, Types::UserType, null: true

    def resolve(email: nil, password: nil)
      # basic validation
      unless user = User.find_by(email:email)
        return GraphQL::ExecutionError.new("erorr");
      end

      # ensures we have the correct user
      return unless user.authenticate(password)
      userID = { id: user.id }
      # use Ruby on Rails - ActiveSupport::MessageEncryptor, to build a token
      crypt = JWT.encode(userID,Rails.application.secrets.secret_key_base.byteslice(0..31))
      
      { user: user, token: crypt }
    end
  end
end