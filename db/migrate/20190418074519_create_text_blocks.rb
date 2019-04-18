class CreateTextBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :text_blocks do |t|
      t.text :header
      t.text :info
      t.integer :glossary_id

      t.timestamps
    end
  end
end
