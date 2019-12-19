class AddTeamMembersToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :team_members, :text
  end
end
