class HomeController < ApplicationController

  def index

  end

  def search
    @keyword = params[:keyword].split(",")
    @person = params[:person].split(",")
  end

  def none

  end
end
