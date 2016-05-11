class TopicReviewer < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  has_many :reviewed_applications, class_name: "ResolvedApplication"
  has_many :claimed_applications, class_name: "PendingApplication"
end
