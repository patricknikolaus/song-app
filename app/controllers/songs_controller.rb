class SongsController < ApplicationController
  def index
    song = Song.all
    render json: song.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end
end
