class CreateConferenceCreators < ActiveRecord::Migration
  def change
    create_table :conference_creators do |t|
      t.timestamps null: false
      t.belongs_to :user, index: true
      t.belongs_to :conference, index: true
    end
  end
end
