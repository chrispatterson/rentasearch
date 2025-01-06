# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SearchProperties, type: :model do
  context 'with no query' do
    let(:query) { nil }
    let(:property) { create(:property) }
    let(:unit) { create(:unit, property: property) }

    it 'returns all Properties' do
      expect(described_class.call(query)).to eq [property]
    end
  end

  context 'with a query' do
    let(:query) { '500 Lincoln Drive' }
    let(:property) { create(:property) }
    let(:unit) { create(:unit, property: property) }

    it 'returns all Properties' do
      expect(described_class.call(query)).to eq [property]
    end
  end
end
