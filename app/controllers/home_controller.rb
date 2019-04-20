class HomeController < ApplicationController

  def index

  end

  def search
    @keyword = params[:keyword].split(",") 
    @person = params[:person].split(",")
    @keyword = Array.new if @keyword.nil?
    @person = Array.new if @person.nil?
    @chats = Array.new

    if @keyword.size > 0 and @person.size == 0
      @chats = Chat.where("content LIKE ?", "%#{@keyword.join("%")}%")
    elsif @keyword.size == 0 and @person.size > 0
      @chats = Chat.where("speaker LIKE ?", "%#{@person.join('%')}%")
    elsif @keyword.size > 0 and @person.size > 0
      @chats = Chat.where("content LIKE ? AND speaker LIKE ?", "%#{@keyword.join("%")}%", "%#{@person.join("%")}%")
    end
  end

  def none

  end
end
