class CreateJoinTableRequestSKill < ActiveRecord::Migration[5.1]
  def change
    create_join_table :requests, :skills do |t|
      # t.index [:request_id, :skill_id]
      # t.index [:skill_id, :request_id]
    end
  end
end
