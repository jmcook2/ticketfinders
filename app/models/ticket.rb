class Ticket < ActiveRecord::Base

  belongs_to :event, dependent: :destroy

  validates :price, presence: true
  validates :category, presence: true
  validates :quantity, presence: true
  validates :event_id, presence: true

end
