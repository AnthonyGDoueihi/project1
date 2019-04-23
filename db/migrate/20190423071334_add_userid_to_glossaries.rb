class AddUseridToGlossaries < ActiveRecord::Migration[5.2]
  def change
    add_column :glossaries, :user_id, :integer
  end
end
