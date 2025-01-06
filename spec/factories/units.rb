# frozen_string_literal: true

FactoryBot.define do
  factory :unit do
    property { nil }
    bedroom_count { 1 }
    bathroom_count { 1 }
    square_footage { 1 }
    rent_price { 1 }
  end
end
