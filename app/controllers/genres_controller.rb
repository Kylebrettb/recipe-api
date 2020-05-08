class GenresController < ApplicationController
  def index
   @genre = Genre.all

       render json: @genre.to_json

end
  def show
    @genre = Genre.find(params[:id])


      render json: @genre.to_json
  end
end
