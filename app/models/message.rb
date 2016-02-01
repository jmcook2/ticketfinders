class Message < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 40 }
  validates :email, presence: true, length: { maximum: 40 }
  validates :body, presence: true, length: { maximum: 500 }

end
