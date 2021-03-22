# frozen_string_lteral: true
class Api::TariffTypesController < ApplicationController
  def index
    render json: TariffType.all, status: :ok
  end
end
