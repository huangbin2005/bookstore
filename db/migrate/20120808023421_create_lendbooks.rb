class CreateLendbooks < ActiveRecord::Migration
  def change
    create_table :lendbooks do |t|
      t.references :employee
      t.references :book
      t.string :lend
      t.date :date
      t.date :returndate

      t.timestamps
    end
    add_index :lendbooks, :employee_id
    add_index :lendbooks, :book_id
  end
end
