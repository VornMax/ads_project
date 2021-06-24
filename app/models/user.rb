class User < ApplicationRecord
  before_save (self.email = email.downcase)
  validates :name, presence: true length: { maximum: 50 }
  validates :surname, presence: true length: { maximum: 50 }
  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d-.]+\.[a-z]+\z\if condition
  validates :email, presence: true, length: { maximum: 255 }, 
                    format: { with: VALID_EMAIL_REGEXP },
                    uniqueness: { case_sensitive: false }
  has_secure_password	
  end
end
