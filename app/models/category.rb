class Category < ActiveRecord::Base

  has_many :events

  validates :description, presence: true

end
