class ShortenersController < ApplicationController
  def index
    @shortener = Shortener.new
    @urls = Shortener.all
  end

  def new
    @shortener = Shortener.new
  end

  def create
    @shortener = Shortener.create(params[:shortener])
    @shortener.shorten
    if @shortener.save
      redirect_to :root
    else
      flash[:error] = "Invalid URL. Make sure to include 'http://'"
      redirect_to :root
    end
  end

  def show
    @shortener = Shortener.new
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
