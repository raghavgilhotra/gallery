class PhotosController < ApplicationController
def create 

  @album=Album.find(params[:album_id])
  @photo=@album.photos.create(params[:photo].permit(:avatar, :tags, :tag_list))
 
  redirect_to @album
end

def show
  @photo = Photo.find(params[:id])
  
        
end

def tagged
  if params[:tag].present? 
    @id = Tag.find_all_by_name( params[:tag]).map(&:photo_id)
    @photos = Photo.find(@id)
    
  else 
    @photos = Photo.all
    
  end  
end

end
