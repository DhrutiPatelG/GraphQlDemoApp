class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :employee, null: false, foreign_key: true
      t.string :project_name

      t.timestamps
    end
  end
end
