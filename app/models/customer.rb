class Customer < ApplicationRecord
  def email_valid()
    unless email.include? '@'
      errors.add(:email, 'Email must contain @')
    end
    unless email.include? '.'
      errors.add(:email, 'Email must contain .')
    end
  end
  
  validates :email, presence: true, length: { minimum: 5 }
  validate :email_valid
end

