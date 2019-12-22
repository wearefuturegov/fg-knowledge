class AddCollectionToSearchIndex < ActiveRecord::Migration[5.2]
  def change

    change_table :pg_search_documents do |t|
      t.references :collection, index: true
    end

  end
end
