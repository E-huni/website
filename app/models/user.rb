class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :first_name, length: {minimum:3}, presence: true
  validates :last_name, length: {minimum:3}, presence: true
  validates :github, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end