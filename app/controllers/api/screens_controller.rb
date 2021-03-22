# frozen_string_literal: true

module Api
  # API for Screens - list, available seats
  class ScreensController < ApplicationController
    def index
      render json: Screen.all, status: :ok
    end
  end
end
