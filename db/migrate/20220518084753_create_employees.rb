class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.references :department, null: false, foreign_key: true
      t.string :employee_name
      t.string :employee_email

      t.timestamps
    end
  end
end
