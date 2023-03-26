class HeroPower < ApplicationRecord
  belongs_to :power
  belongs_to :hero
 
  validates :strength, {
    presence: true,
    acceptance: { 
      accept: ["Strong", "Weak", "Average"],
      message: "The strength value should be 'Strong', 'Weak' or 'Average'"
     }
  }
end
