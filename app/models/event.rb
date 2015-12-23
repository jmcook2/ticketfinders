class Event < ActiveRecord::Base

  has_one :venue
  has_one :category
  has_many :teamsartists

  validates :name, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :venue_id, presence: true
  validates :category_id, presence: true
  validates :teams_artist_id, presence: true

end
