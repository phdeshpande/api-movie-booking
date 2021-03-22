# frozen_string_literal: true

class Seating < ApplicationRecord
  belongs_to :screen
  belongs_to :tariff_type
end
