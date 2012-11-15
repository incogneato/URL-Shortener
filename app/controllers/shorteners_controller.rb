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
    redirect_to :root if @shortener.save
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
