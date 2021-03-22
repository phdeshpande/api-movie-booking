# frozen_string_literal: true

class Api::BookingsController < ApplicationController
  def create
      current_user = User.first.id
      screening = Screening.find(params[:screening_id])
      seat_ids = params[:seat_ids].split(',').map(&:to_i)

      seats = Seating.includes(:tariff_type).where(id: seat_ids)
      seat_booking_data = seats.collect { |s| { seating_id: s.id , unit_price: s.tariff_type.price } }
      total_booking_price = seat_booking_data.sum{|s| s[:unit_price]}

      begin
  ActiveRecord::Base.transaction do
          booking = screening.bookings.new(({ user_id: current_user, total_price: total_booking_price }))
          booking.save!

          booking.booking_details.create!(seat_booking_data)
          booking.toggle(:status)
debugger
          render json: booking.serializable_hash
        end
      rescue Exception => e
        Rails.logger.error 'Failed to create Booking' + e.to_s
        json_response(e.to_s, e.status)
      end

  end
end
