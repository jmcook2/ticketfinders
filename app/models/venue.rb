class Venue < ActiveRecord::Base

  has_many :events

  validates :name, presence: true,
                   length: { maximum: 20 }

  validates :capacity, presence: true

  validates :city, presence: true,
                   length: { maximum: 20 }

  validates :country, presence: true,
                      length: { maximum: 20 }

end
