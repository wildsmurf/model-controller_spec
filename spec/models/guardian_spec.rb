require 'rails_helper'

RSpec.describe Guardian, type: :model do
  describe 'associations and dependancy' do
    it { should have_many(:weapons).dependent(:destroy) }
  end
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:klass) }
    it { should validate_presence_of(:subclass) }
    it { should validate_presence_of(:light) }
    it { should validate_presence_of(:race) }
    it { should validate_presence_of(:gender) }
  end
end
