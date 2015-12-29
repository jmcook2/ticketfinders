class Competition < ActiveRecord::Base

  has_many :players
  has_one :category

  validates :name, presence: true,
                   length: { maximum: 20 }

  validates :category_id, presence: true

end
