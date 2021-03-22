class MovieSerializer
  include JSONAPI::Serializer
  attributes :title, :duration
end
