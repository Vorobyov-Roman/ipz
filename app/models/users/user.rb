class User < ActiveRecord::Base
  has_many :conference_creators
  has_many :created_conferences, through: :conference_creators, source: :conference

  has_many :topic_reviewers
  has_many :reviewed_topics, through: :topic_reviewers, source: :topic

  has_many :sent_applications, class_name: "Application"
  has_many :given_talks, class_name: "Talk"
  has_and_belongs_to_many :categories
end
