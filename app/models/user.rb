class User < ApplicationRecord
  has_many :questions

  validates :username
end
