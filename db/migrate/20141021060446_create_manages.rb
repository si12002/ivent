class CreateManages < ActiveRecord::Migration
  def change
    create_table :manages do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
