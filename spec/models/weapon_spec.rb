require 'rails_helper'

RSpec.describe Weapon, type: :model do
  describe 'belongs_to' do
    it {should belong_to(:guardian) }
  end

  describe 'validations' do
    it {should validate_presence_of(:name) }
    it {should validate_presence_of(:type) }
    it {should validate_presence_of(:damage) }
  end
end
