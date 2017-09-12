class Guardian < ApplicationRecord
  validates_presence_of :name, :klass, :subclass, :light, :race, :gender
  has_many :weapons, dependent: :destroy
end
