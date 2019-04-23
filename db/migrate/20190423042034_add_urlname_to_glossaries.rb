class AddUrlnameToGlossaries < ActiveRecord::Migration[5.2]
  def change
    add_column :glossaries, :urlname, :text
  end
end
