require 'rails_helper'

RSpec.describe Topic, type: :model do

	let(:name) { "TestName" }
	let(:description) { "TestDesc" }
	let(:public) { true }
	let(:topic) { Topic.create!(name: name, description: description) }
	#it { is_expected.to have_many(:posts) }
	

	describe "attributes" do
		it "has name, description, and public attributes" do 
			expect(topic).to have_attributes(name: name, description: description, public: public) 
		end

		it "is public by default" do
			expect(topic.public).to be(true)
		end
	end

end	
