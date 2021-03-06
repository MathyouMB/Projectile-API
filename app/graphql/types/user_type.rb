module Types
    class UserType < BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :email, String, null: false
      field :password_digest,String, null:false
      field :projects,[ProjectType], null:false
      field :skills,[SkillType], null:false
    end
  end