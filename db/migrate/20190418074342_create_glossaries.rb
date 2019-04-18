class CreateGlossaries < ActiveRecord::Migration[5.2]
  def change
    create_table :glossaries do |t|
      t.text :title

      t.timestamps
    end
  end
end
