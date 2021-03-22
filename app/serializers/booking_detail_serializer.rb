class BookingDetailSerializer
  include JSONAPI::Serializer

  attributes :booking_id, :seating_id, :unit_price
  belongs_to :booking
end
