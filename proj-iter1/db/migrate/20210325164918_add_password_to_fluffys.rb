class AddPasswordToFluffys < ActiveRecord::Migration
  def change
    add_column :fluffys, :password, :string
  end
end
