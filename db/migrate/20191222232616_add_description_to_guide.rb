class AddDescriptionToGuide < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :short_description, :text
  end
end
