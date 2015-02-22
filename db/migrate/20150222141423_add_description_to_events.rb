class AddDescriptionToEvents < ActiveRecord::Migration
  def change
    add_column :events, :description, :text
    add_index :users, :uid
  end
end
