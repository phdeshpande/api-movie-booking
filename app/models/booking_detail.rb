class BookingDetail < ApplicationRecord
  belongs_to  :booking, dependent: :destroy
  belongs_to  :seating
end
