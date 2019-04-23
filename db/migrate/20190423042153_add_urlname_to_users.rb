class AddUrlnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :urlname, :text
  end
end
