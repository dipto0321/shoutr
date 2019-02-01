# frozen_string_literal: true

class PhotoShout < ApplicationRecord
  has_one_attached :image
end
