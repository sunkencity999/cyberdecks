require 'rails_helper'

RSpec.describe Post, type: :model do

	let(:name) { "TestName" }
	let(:description) { "TestDescription" }
	let(:title) { "TestTitle" }
	let(:body) { "Test Body that is long enough to pass validation"}
	
	let(:topic) { Topic.create!(name: name, description: description) }
	
	let(:user) { User.create!(name: "Test User", email: "test@test.com", password: "password")}
	
	let(:post) { topic.posts.create!( title: title, body: body, user: user) }
	
	
	it { is_expected.to belong_to(:topic) }
	it { is_expected.to belong_to(:user) }
	it { is_expected.to validate_presence_of(:title) }
	it { is_expected.to validate_presence_of(:body) }
	it { is_expected.to validate_presence_of(:topic) }
	
	it { is_expected.to validate_length_of(:title).is_at_least(5) }
	it { is_expected.to validate_length_of(:body).is_at_least(15) }
	it { is_expected.to have_many(:comments) }


	describe "attributes" do
		it "has title, body and user attributes" do
			expect(post).to have_attributes(title: title, body: body, user: user )
		end
	end
end
