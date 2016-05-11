class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :type
      t.text :body
      t.timestamps null: false
      t.belongs_to :sender, index: true

      # Pending
      t.references :claimer, index: true
      t.belongs_to :topic, index: true

      # Resolved
      t.string :status
      t.belongs_to :reviewer, index: true
    end
  end
end
