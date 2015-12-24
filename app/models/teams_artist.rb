class TeamsArtist < ActiveRecord::Base

  has_many :events
  has_many :competitions
  has_one :category

  validates :name, presence: true,
                   length: { maximum: 20 }
  validates :category_id, presence: true

end
