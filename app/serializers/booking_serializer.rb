class BookingSerializer
  include JSONAPI::Serializer

  attributes :user_id, :screening_id, :booking_details
  has_many :booking_details
  belongs_to :user_id
end
