class Note < ActiveRecord::Base
  belongs_to :application, class_name: "ResolvedApplication"
end
