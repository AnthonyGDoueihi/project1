class CreateImageBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :image_blocks do |t|
      t.text :image
      t.text :subhead
      t.integer :glossary_id

      t.timestamps
    end
  end
end
