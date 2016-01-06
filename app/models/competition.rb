class Competition < ActiveRecord::Base

  has_many :players
  has_one :category
  has_many :events, dependent: :destroy

  validates :name, presence: true,
                   length: { maximum: 20 }

  validates :category_id, presence: true

end
