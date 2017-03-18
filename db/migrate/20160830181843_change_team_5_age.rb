class ChangeTeam5Age < ActiveRecord::Migration[5.0]
  def change
    rename_column :registrations, :team_5_age, :team_4_age
  end
end
