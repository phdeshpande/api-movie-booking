# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :screenings
  has_many :screens, through: :screenings

  validates :title, presence: true
end
