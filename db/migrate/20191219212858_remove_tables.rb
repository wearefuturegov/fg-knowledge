class RemoveTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :guides
    drop_table :series
  end
end
