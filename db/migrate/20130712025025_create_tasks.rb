class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
      t.datetime :due_time
      t.boolean :completed
      t.references :user, index: true

      t.timestamps
    end
  end
end
