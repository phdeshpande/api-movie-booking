# frozen_string_literal: true

module Api
  # :nodoc:
  class MoviesController < ApplicationController
    before_action :set_movie, only: [:screenings, :booking]

    def index
      render json: Movie.all, status: :ok
    end

    def screenings
      screenings = @@movie.screenings.where(show_day: params[:date])
      json_response(screenings)
    end

    private
    def set_movie
      @@movie = Movie.find(params[:id])
    end
  end
end
