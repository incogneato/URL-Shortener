class ShortenersController < ApplicationController
  after_filter :increment_visit_count, :only => :show

  def index
    @shortener = Shortener.new
    @urls = Shortener.all
  end

  def create
    @shortener = Shortener.new(params[:shortener])#.add_http
    if @shortener.save
      redirect_to root_url
    else
      flash[:error] = "Invalid URL. Make sure to include 'http://'"
      redirect_to root_url
    end
  end

  def show
    @shortener = Shortener.find_by_short_url(params[:short_url])
    redirect_to @shortener.original_url
  end

  private

  def increment_visit_count
    @shortener.increment_visit_count
  end
end
