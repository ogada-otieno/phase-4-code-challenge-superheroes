class HeroPowerSerializer < ActiveModel::Serializer
  # attributes :id, :strength, :power_id, :hero_id
  attributes :id, :name, :super_name
  has_many :powers
end
