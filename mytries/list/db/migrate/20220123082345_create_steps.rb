class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.text :description
      t.references :tasks

      t.timestamps
    end
  end
end
