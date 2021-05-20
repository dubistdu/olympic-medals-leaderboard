class SportEvent < ApplicationRecord
  belongs_to :sport_category
  has_many :medal_events
end
