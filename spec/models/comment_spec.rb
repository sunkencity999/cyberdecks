require 'rails_helper'

RSpec.describe Comment, type: :model do

	let(:user) { User.create!(name: "Test User", email: "test@test.com", password: "password")}
	let(:topic) { Topic.create!(name: "TopicTestName", description: "TopicTestDescription")}
	let(:post) {topic.posts.create!(title:"new post title", body:"new body text that will pass", user: user)}
	let(:comment) {Comment.create!(body:"comment body is now long enough", post: post) }

	describe "attributes" do
		it "has a body attribute" do
			expect(comment).to have_attributes(body:"comment body is now long enough", post: post)
		end
	end
end
