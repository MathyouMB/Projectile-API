module Types
    class ProjectType < BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :description, String, null: false
      field :url, String, null: false
      field :user_id, ID, null: false
      field :requests,[RequestType], null:false
    end
end
