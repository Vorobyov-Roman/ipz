class PendingApplication < Application
  belongs_to :topic
  references :claimer, class_name: "TopicReviewer"
end