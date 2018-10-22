require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { User.create!(name: "Test User", email: "test@test.com", password: "password")}
	it { is_expected.to have_many(:posts) }

	describe "attributes" do
		it " should have name and email attributes" do
			expect(user).to have_attributes(name: "Test User", email: "test@test.com", password: "password")
		end
	end
end
