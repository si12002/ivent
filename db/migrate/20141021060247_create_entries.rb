class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :user
      t.references :event

      t.timestamps
    end

    add_index :entries, [:user_id, :event_id], unique: true

  end
end
