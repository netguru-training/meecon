class ChangeTypeOfBeginnigAndEndFieldsInEvent < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.rename :beginning, :beginning_at
      t.rename :end, :end_at
      t.change :beginning_at, :datetime
      t.change :end_at, :datetime
    end
  end
  def down
    change_table :events do |t|
      t.rename :beginning_at, :beginning
      t.rename :end_at, :end
      t.change :beginning, :date
      t.change :end, :date
    end
  end
end
