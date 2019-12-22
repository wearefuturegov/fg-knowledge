class AddLearnMoreToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :learn_more, :text
  end
end
