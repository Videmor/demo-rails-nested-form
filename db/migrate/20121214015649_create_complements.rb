class CreateComplements < ActiveRecord::Migration
  def change
    create_table :complements do |t|
      t.integer :project_id
      t.string :name

      t.timestamps
    end
  end
end
