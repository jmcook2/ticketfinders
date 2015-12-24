class Competition < ActiveRecord::Base

  has_many :teamsartists
  has_one :category

  validates :name, presence: true,
                   length: { maximum: 20 }

  validates :category_id, presence: true

end
