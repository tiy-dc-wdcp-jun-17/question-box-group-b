class User < ApplicationRecord
  # has_many :questions

  has_secure_password
  validates :email,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }

  private

  def downcase_email
    email.downcase if email
  end

end
