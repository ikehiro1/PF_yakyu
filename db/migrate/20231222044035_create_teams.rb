class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|

      t.string :team_name
      t.string :team_number
      t.string :team_introduction
      t.string :team_img
      t.string :schedule

      t.timestamps
    end
  end
end
