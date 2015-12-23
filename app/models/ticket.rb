class Ticket < ActiveRecord::Base

  has_one :event

  validates :price, presence: true
  validates :category, presence: true
  validates :quantity, presence: true
  validates :event_id, presence: true

end
