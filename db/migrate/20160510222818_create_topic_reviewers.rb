class CreateTopicReviewers < ActiveRecord::Migration
  def change
    create_table :topic_reviewers do |t|
      t.timestamps null: false
      t.belongs_to :user, index: true
      t.belongs_to :topic, index: true
    end
  end
end
