require 'rails_helper'

RSpec.describe Menu, type: :model do
	context 'validate factory' do
	  subject { build(:menu) }
		it 'should validate the factory' do
		  expect(subject).not_to be_nil
		end
	end
	context 'validate presence' do
	  it { should validate_presence_of(:name) }
		it { should validate_presence_of(:category) }
		it { should validate_presence_of(:price) }
		it { should validate_presence_of(:user_id) }
	end
	context 'validate relationship' do
	  it { should belong_to(:user) }
	end
end
