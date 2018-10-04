require 'rails_helper'
#require 'spec_helper'

RSpec.describe WelcomeController, type: :controller do
	describe "GET index" do
		it "renders the index template"do

			get :index

			expect(response).to render_template("index")
		end
	end

	describe "GET blog" do
		it "renders the blog template" do

			get :blog

			expect(response).to render_template("blog")
		end
	end

	describe "GET builds" do 
		it "renders the builds template" do

			get :builds

			expect(response).to render_template("builds")
		end
	end

	describe "GET contact" do
		it "renders the contact template" do 

			get :contact 

			expect(response).to render_template("contact")
		end
	end


end


