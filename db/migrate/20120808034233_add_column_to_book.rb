class AddColumnToBook < ActiveRecord::Migration
  def self.up
    add_attachment :books, :picatt
  end

  def self.down
    remove_attachment :books, :picatt
  end
end
