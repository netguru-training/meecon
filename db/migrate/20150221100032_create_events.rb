class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :beginning
      t.date :end
      t.string :place

      t.timestamps null: false
    end
  end
end
