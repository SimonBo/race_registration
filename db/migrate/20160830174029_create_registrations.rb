class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.integer :age
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :team_1_name
      t.integer :team_1_age
      t.string :team_2_name
      t.integer :team_2_age
      t.string :team_3_name
      t.integer :team_3_age
      t.string :team_4_name
      t.integer :team_5_age
      t.string :token

      t.timestamps
    end
  end
end
