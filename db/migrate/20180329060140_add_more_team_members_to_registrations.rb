class AddMoreTeamMembersToRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_column :registrations, :team_5_name, :string
    add_column :registrations, :team_6_name, :string
    add_column :registrations, :team_7_name, :string
    add_column :registrations, :team_5_age, :integer
    add_column :registrations, :team_6_age, :integer
    add_column :registrations, :team_7_age, :integer
  end
end
