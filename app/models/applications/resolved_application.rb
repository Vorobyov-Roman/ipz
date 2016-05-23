class ResolvedApplication < Application
  belongs_to :reviewer, class_name: "TopicReviewer"
  has_many :notes, foreign_key: "application_id"
end