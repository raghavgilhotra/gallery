class TagsController < ApplicationController
def create
  @photo = Photo.find(params[:photo_id])
  @tag = @photo.tags.create(params[:tag].permit(:name))
  redirect_to @photo
end
end
