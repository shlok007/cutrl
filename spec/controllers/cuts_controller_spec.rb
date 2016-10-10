require 'rails_helper'

RSpec.describe CutsController, type: :controller do
	describe "GET index" do
		it "respond with success 200" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
	end		
end 