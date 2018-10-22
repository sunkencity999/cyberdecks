require 'rails_helper'

include SessionsHelper

RSpec.describe PostsController, :type => :controller do
	let(:my_topic) {Topic.create!(name: "TN", description: "TD")}
	let(:my_user) { User.create!(name: "Test User", email: "test@test.com", password: "password")}
	let(:my_post) {my_topic.posts.create!(title: "Test Title", body: "Test Body that will pass validation", user: my_user)}

context "guest user" do

#These index tests not needed with posts nested to Topic
 # describe "GET #index" do
  #  it "returns http success" do
   #   get :index
    #  expect(response).to have_http_status(:success)
   # end
 # end
  #	it "assigns [my_post] to @posts" do 
#		get :index

#		expect(assigns(:posts)).to eq([my_post])
#	end
	

  describe "GET #show" do
    it "returns http success" do
      
	    get :show, params: { topic_id: my_topic.id, id: my_post.id }
      expect(response).to have_http_status(:success)
    end
 	it "renders the #show view" do
		get :show, params: { topic_id: my_topic.id, id: my_post.id }
		expect(response).to render_template :show
	end
	it "assigns my_post to @post" do
		get :show, params: { topic_id: my_topic.id, id: my_post.id }
		expect(assigns(:post)).to eq(my_post)
	end
  end


  describe "GET #new" do
    it "returns http redirect" do
	    get :new, params: { topic_id: my_topic.id, post: { title: "Test Tile", body: "Test body that will pass validation" } }
      expect(response).to redirect_to(new_session_path)
    end
  end

  describe "POST create" do 
	  it "returns http redirect" do
		  post :create, params: { topic_id: my_topic.id, post: { title: "Test Title", body: "Test Body that will pass validation"}}
		  expect(response).to redirect_to(new_session_path)
	  end
  end

  describe "GET edit" do
	  it  "returns http redirect" do 
		  get :edit, params: { topic_id: my_topic.id, id: my_post.id}
		  expect(response).to redirect_to(new_session_path)
	  end
  end
  describe "PUT update" do
	  it "returns http redirect" do 
		  new_title = "This is a new title"
		  new_body = "This is a new body that will pass validation"

		  put :update, params: {  topic_id: my_topic.id, id: my_post.id, post: { title: new_title, body: new_body} }
		  
		  expect(response).to redirect_to(new_session_path)
	  end
  end
  describe "DELETE destroy" do
	  it "deletes the post" do 
		  delete :destroy, params: {  topic_id: my_topic.id, id: my_post.id }
		  expect(response).to have_http_status(:redirect)
	  end
     end
  end
end
  
