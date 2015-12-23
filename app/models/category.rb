class Category < ActiveRecord::Base

  has_many :events

  validates :description, presence: true,
                          length: { maximum: 20 }

end
