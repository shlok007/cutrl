require 'rails_helper'

RSpec.describe CutsController, type: :controller do
	describe "GET index" do
		it "respond with success 200" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end	

	describe "GET :url" do
		it "redirects to correct url" do
			get :decode, url: "http://github.com"
			expect(response).to have_http_status(308)
		end
	end
end 