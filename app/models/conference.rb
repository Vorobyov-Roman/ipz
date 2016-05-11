class Conference < ActiveRecord::Base
  has_many :topics
  has_one :creator, class_name: "ConferenceCreator"
end
