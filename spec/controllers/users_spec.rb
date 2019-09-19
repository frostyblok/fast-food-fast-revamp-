require 'rails_helper'

RSpec.describe Users, type: :controller do
	before(:each) do
		@request.env['devise.mapping'] = Devise.mappings[:user]
		sign_in(user)
	end
  context 'signin user' do
	  let(:user) { FactoryBot.create(:user) }
	  it 'successfully signup a new user' do
		  assert_response :success
	  end
  end

	context 'signin admin' do
		let(:user) { FactoryBot.create(:user, :admin) }
	  it 'successfully signin an admin' do
	    assert_response :success
	  end
	end
end