class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.timestamps null: false
      t.belongs_to :conference, index: true
    end
  end
end
