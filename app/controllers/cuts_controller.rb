class CutsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  	@cut = Cut.new
  end

  def create
  	@cut = Cut.new(cut_params)
  	@cut.save
    respond_to do |format|
      format.js
    end
  end

  def decode
    begin @url = Cut.find(params[:code].base62_decode).url
      redirect_to @url
    rescue
      flash[:error] = "This shortened url does not exist."
      redirect_to :root
    end 
  end

  private

  def cut_params
  	params.require(:cut).permit(:url)
  end
end
