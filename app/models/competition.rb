class Competition < ActiveRecord::Base

  has_many :teamsartists

  validates :name, presence: true

end
