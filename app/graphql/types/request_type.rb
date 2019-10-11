module Types
    class RequestType < BaseObject
      field :id, ID, null: false
      field :project_id, ID, null: false
      field :title, String, null: false  
      field :description, String, null: false
      field :skills,[SkillType], null:false  
    end
end