class RemoveColumnToLendbook < ActiveRecord::Migration
  def up
    remove_column :lendbooks, :lend
  end

  def down
    add_column :lendbooks, :lend, :string
  end
end
