class PendingApplication < Application
  belongs_to :topic
  references :claimer, class_name: "TopicReviewer"

  def claimed?
    claimer.nil?
  end

  def claim(reviewer)
    if reviewer.topic == topic
      claimer = reviewer unless claimed?
    end
  end

  def resolve(reviewer, status, notes)
    if reviewer == claimer
      self.reviewer = reviewer
      self.status = status
      self.notes << notes
      self.type = "ResolvedApplication"
    end
  end
end
