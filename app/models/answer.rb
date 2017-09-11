class Answer < ApplicationRecord
  include PgSearch

  has_many :users
  belongs_to :question

  multisearchable against: %i(body)
end
