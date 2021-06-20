class SongsController < ApplicationController
  def index
    song = Song.all
    render json: song.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def create
    song = Song.new(
      title: params[:title],
       album: params[:album],
       artist: params[:artist],
       year: params[:year]
      )
      song.save
    render json: song.as_json
  end

  def update
    song = Song.find_by(id: params[:id])
    song.title = params[:title] || song.title
    song.album = params[:album] || song.album
    song.artist = params[:artist] || song.artist
    song.year = params[:year] || song.year
    song.save
    render json: song.as_json
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: {
      message: "you just deleted this song",
      song: song.as_json
    }
  end
end
