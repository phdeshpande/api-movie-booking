# frozen_string_literal: true

class TariffType < ApplicationRecord
  has_many :seatings
end
