class Athlete < ApplicationRecord
  has_many :medals
  has_many :medal_events
  belongs_to :country
end
