class TopicReviewer < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  has_many :reviewed_applications, class_name: "ResolvedApplication"
  has_many :claimed_applications, class_name: "PendingApplication"

  def claim_application(application)
    if application.pending? && application.topic == topic
      application.claim(self) unless application.claimed?
    end
  end

  def resolve_application(application, status, notes)
    if application.pending? && application.claimer == self
      application.resolve(self, status, notes)
    end
  end
end
