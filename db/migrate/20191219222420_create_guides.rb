class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :name
      t.text :body
      t.integer :position
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
