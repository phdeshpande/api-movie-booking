# frozen_string_literal: true

class Screen < ApplicationRecord
  has_many :seatings
  has_many :screenings
end
