class Api::ScreeningsController < ApplicationController
  def index
    screenings = Screening.all.includes(:movie)
   render json: ScreeningSerializer.new(screenings).serializable_hash
  end
end
