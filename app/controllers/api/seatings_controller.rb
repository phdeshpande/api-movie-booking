# frozen_string_literal: true

module Api
  # API for Seats - list, available seats
  class SeatingsController < ApplicationController
    def index
      render json: Seating.all, status: :ok
    end
  end
end
