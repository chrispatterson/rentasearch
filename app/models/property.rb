# frozen_string_literal: true

class Property < ApplicationRecord
  has_many :units, dependent: :destroy
end
