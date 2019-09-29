class ProjectHasRequests < ActiveRecord::Migration[5.1]
  def change
    add_reference :requests, :project, foreign_key: true
  end
end
