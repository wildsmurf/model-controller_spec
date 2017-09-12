class Weapon < ApplicationRecord
  belongs_to :guardian
  validates_presence_of :name, :type, :damage
end
