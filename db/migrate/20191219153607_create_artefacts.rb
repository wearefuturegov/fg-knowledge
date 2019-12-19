class CreateArtefacts < ActiveRecord::Migration[5.2]
  def change
    create_table :artefacts do |t|
      t.string :name
      t.text :description
      t.string :link
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
