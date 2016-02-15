class Event < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader
  belongs_to :venue
  belongs_to :category
  has_one :competition
  has_and_belongs_to_many :players
  has_many :tickets, dependent: :destroy

  validates :name, presence: true,
                   length: { maximum: 50 }
  validates :start_time, presence: true
  validates :venue_id, presence: true
  validates :category_id, presence: true
  validates :sports, inclusion: { in: [true, false] }
  validates :priority, inclusion: { in: [true, false] }

  include PgSearch
  pg_search_scope :search, :against => :name,
    using: {tsearch: {dictionary: "english"}},
    associated_against: {venue: [:name, :city], category: :description}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      scoped
    end
  end

end
