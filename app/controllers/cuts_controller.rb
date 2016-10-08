class CutsController < ApplicationController

  def index
  	@cut = Cut.new
  end

  def create
  	@cut = Cut.new(cut_params)
  	if @cut.save
  		render text: "http://cuturl.heroku.com/#{@cut.shortened_url}"
  	else
  		render text: "Oops! We deeply apologise for the failure. Please try again later."
  	end
  end

  def decode
    begin @url = Cut.find(params[:code].base62_decode).url
      redirect_to @url
    rescue
      redirect_to :root
    end 
  end

  private

  def cut_params
  	params.require(:cut).permit(:url)
  end
end
