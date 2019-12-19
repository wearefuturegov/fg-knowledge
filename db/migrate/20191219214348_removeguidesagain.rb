class Removeguidesagain < ActiveRecord::Migration[5.2]
  def change
    drop_table :series
  end
end
