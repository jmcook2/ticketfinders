class Event < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader
  belongs_to :venue
  has_one :category
  has_one :competition
  has_and_belongs_to_many :players
  has_many :tickets, dependent: :destroy

  validates :name, presence: true,
                   length: { maximum: 20 }
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :venue_id, presence: true
  validates :category_id, presence: true
  validates :sports, inclusion: { in: [true, false] }
  validates :priority, inclusion: { in: [true, false] }

end
