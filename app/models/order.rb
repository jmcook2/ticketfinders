class Order < ActiveRecord::Base

  has_one :ticket

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :name, presence: true (TBD)

end
