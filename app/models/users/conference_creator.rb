class ConferenceCreator < ActiveRecord::Base
  belongs_to :user
  belongs_to :conference

  def add_reviewer(user, topic)
    topic.reviewers << TopicReviewer.create(user: user)
  end
end
