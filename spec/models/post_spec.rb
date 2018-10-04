require 'rails_helper'

RSpec.describe Post, type: :model do
	let(:post) { Post.create!(title: "New Test Post Title", body: "New test body content")}
	
	describe "attributes" do
		it "has title and body attributes" do
			expect(post).to have_attributes(title: "New Test Post Title", body: "New test body content")
		end
	end
end
