class HeroPower < ApplicationRecord
  belongs_to :power
  belongs_to :hero
 
  validates :strength, {
    presence: true,
    inclusion: { 
      in: %w(Strong Weak Average),
      message: "%{value} is not a valid strength. User 'Strong', 'Weak' or 'Average'"
     }
  }
end
