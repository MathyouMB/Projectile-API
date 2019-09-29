module Types
    class RequestType < BaseObject
      field :id, ID, null: false
      field :description, String, null: false
    end
end