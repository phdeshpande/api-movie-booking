# frozen_string_literal: true

class Screening < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  belongs_to :show_time
  has_many   :bookings
  has_many   :booking_details
end
