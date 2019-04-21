class CreateGlossariesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :glossaries_tags, :id => false do |t|
      t.integer :glossary_id
      t.integer :tag_id
    end
  end
end
