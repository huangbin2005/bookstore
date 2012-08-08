class AddColumnToLendbook < ActiveRecord::Migration
  def change
    add_column :lendbooks, :status, :string
  end
end
