class Answer < ApplicationRecord
  has_many :users
  belongs_to :question
end
