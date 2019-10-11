module Types
    class ProjectType < BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :description, String, null: false
      field :url, String, null: false
      #field :user_id, ID, null: false
      field :posted_by, UserType, null: true, method: :user
      field :requests,[RequestType], null:false
      field :skills,[SkillType], null:false
    end
end
