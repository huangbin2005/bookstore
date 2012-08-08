class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.text :gender
      t.references :department

      t.timestamps
    end
    add_index :employees, :department_id
  end
end
