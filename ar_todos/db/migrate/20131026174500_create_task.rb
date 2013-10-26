

class CreateTask < ActiveRecord::Migration

  def change
    create_table(:tasks) do |t|
      t.text :todo
      t.timestamp
    end
  end
end
