class Category < ActiveRecord::Base

  has_many :events, dependent: :destroy
  has_many :competitions, dependent: :destroy

  validates :description, presence: true,
                          length: { maximum: 20 }

end
