class AddTaskToUser < ActiveRecord::Migration[7.0]
  def change
    change_table :tasks do |t|
      t.references :user
    end
  end
end
