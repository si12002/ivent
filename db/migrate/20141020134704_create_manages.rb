class CreateManages < ActiveRecord::Migration
  def change
    create_table :manages do |t|

      t.timestamps
    end
  end
end
