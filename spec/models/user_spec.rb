require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { User.create!(name: "Test User", email: "test@test.com", password: "password")}
	it { is_expected.to have_many(:posts) }
	it { is_expected.to have_many(:comments) }

	describe "attributes" do
		it " should have name and email attributes" do
			expect(user).to have_attributes(name: "Test User", email: "test@test.com", password: "password")
		end
	
		it "responds to role" do
			expect(user).to respond_to(:role)
		end

		it "responds to admin?" do 
			expect(user).to respond_to(:admin?)
		end

		it "responds to members" do 
			expect(user).to respond_to(:member?)
		end

	end

	describe "roles" do
		it "is member by default" do
			expect(user.role).to eql("member")
		end

		context "member user" do
			it "returns true for #member?" do 
				expect(user.member?).to be_truthy
			end

			it "returns false for #admin?" do
				expect(user.admin?).to be_falsey
			end
		end

		context "admin user" do 
			before do
				user.admin!
			end

			it "returns false for #member?" do 
				expect(user.member?).to be_falsey
			end

			it "returns true for #admin?" do
				expect(user.admin?).to be_truthy
			end
		end
	end
end
