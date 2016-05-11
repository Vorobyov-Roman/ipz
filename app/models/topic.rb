class Topic < ActiveRecord::Base
  belongs_to :conference
  has_many :talks
  has_many :reviewers, class_name: "TopicReviewer"
  has_many :pending_applications
end
