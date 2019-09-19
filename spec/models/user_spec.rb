require 'rails_helper'

RSpec.describe User, type: :model do
	context 'Validate factory' do
	  it 'has valid user model' do
	    expect(build(:user)).to be_valid
	  end
	end

	context 'validation' do
		before { create(:user) }
		context 'presence' do
			it { should validate_presence_of :first_name }
		  it { should validate_presence_of :last_name }
		  it { should validate_presence_of :phone }
		end

		context 'uniqueness' do
			it { should validate_uniqueness_of :username }
		end

		context 'is database authenticable' do
		  subject do
			  described_class.create(
				 email: 'test@gmail.com',
				 password: 'sweetburn',
				 password_confirmation: 'sweetburn'
		    )
		  end
		  it 'dfdkfjkdf' do
			  expect(subject.valid_password?('sweetburn')).to be_truthy
		  end
		end
	end
end
