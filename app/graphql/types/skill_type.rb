module Types
    class SkillType < BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :colour, String, null: false
    end
end