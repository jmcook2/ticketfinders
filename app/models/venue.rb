class Venue < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  has_many :events, dependent: :destroy

  validates :name, presence: true,
                   length: { maximum: 50 }

  validates :capacity, presence: true
  validates :address, presence: true

  validates :city, presence: true,
                   length: { maximum: 20 }

  validates :country, presence: true,
                      length: { maximum: 20 }

end
