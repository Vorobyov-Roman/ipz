class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :name
      t.timestamps null: false
      t.belongs_to :speaker, index: true
      t.belongs_to :topic, index: true
    end
  end
end
