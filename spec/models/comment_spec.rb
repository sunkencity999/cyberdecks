require 'rails_helper'

RSpec.describe Comment, type: :model do
	let(:topic) { Topic.create!(name: "TopicTestName", description: "TopicTestDescription")}
	let(:post) {Topic.posts.create!(title:"new post title", body:"new body text")}
	let(:comment) {Comment.create!(body:"comment body", post: post) }

	describe "attributes" do
		it "has a body attribute" do
			expect(comment).to have_attributes(body:"comment body")
		end
	end
end
