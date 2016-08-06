class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bio, presence: true
  validates :password, presence: true
  validates :average, presence: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  has_many :donations

  def self.total_funds
    Donation.all.sum(:pledge)
  end
end
