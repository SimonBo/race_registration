class AddTeamNameToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :team_name, :string
  end
end
