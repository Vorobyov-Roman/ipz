class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :text
      t.timestamps null: false
      t.belongs_to :application, index: true
    end
  end
end
