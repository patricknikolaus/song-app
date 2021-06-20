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
end
