class AlbumsController < ApplicationController
def new
 @user= User.find(params[:user_id])
@album=@user.albums.new
3.times do
@photo= @album.photos.build

@tag= @photo.tags.build

end
end
def create
  @user = User.find(params[:user_id])
  @album= @user.albums.create(params[:album])
  redirect_to album_path(@album)
end
def show
  @album = Album.find(params[:id])
end


end
