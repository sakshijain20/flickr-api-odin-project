class StaticPagesController < ApplicationController
  require 'flickr'

  def search
    flickr = Flickr.new
    unless params[:user_id].blank?
      @photos = flickr.photos.search(user_id: params[:user_id])
    else
      @photos = flickr.photos.getRecent
    end
  end

end
