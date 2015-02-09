class UrlsController < ApplicationController
  def index
    @url = Url.new
  end

  def show
    @url = Url.find_by(slug: params[:slug])
  end

  def create
    @url = Url.create(url_params)
    if @url.save
      flash[:notice] = "Now it's little! http://localhost:3000/#{@url.slug}"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def url_params
    params.require(:url).permit(:full_url)
  end

end
