class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :dtstart
      t.datetime :dtend
      t.string :location
      t.float :lat
      t.float :lng
      t.text :summary

      t.timestamps
    end
  end
end
