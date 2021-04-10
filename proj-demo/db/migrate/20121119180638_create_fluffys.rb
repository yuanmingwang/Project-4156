class CreateFluffys < ActiveRecord::Migration
  def up
    create_table :fluffys do |t|
      t.string :name
      t.string :budget
      t.string :remaining_budget
      t.string :fluffy_coin
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :fluffys
  end
end
