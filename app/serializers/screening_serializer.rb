class ScreeningSerializer
  include JSONAPI::Serializer

  attributes :id, :show_day

  belongs_to :movie
  belongs_to :screen
end
