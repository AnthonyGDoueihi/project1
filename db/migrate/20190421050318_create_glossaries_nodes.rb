class CreateGlossariesNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :glossaries_nodes, :id => false do |t|
      t.integer :glossary_id
      t.integer :node_id
    end
  end
end
