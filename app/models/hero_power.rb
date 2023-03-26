class HeroPower < ApplicationRecord
  belongs_to :power
  belongs_to :hero
 
  validates :strength, {
    presence: true,
    acceptance: { accept: ["Strong", "Weak", "Average"] }
  }

  # validates :power_id, presence: true
  # validates :hero_id, presence: true
end
