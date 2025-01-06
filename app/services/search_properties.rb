# frozen_string_literal: true

class SearchProperties
  def self.call(query)
    new(query).call
  end

  def initialize(_query)
    @query
  end

  def call
    search_results
  end

  private

  def search_results
    Property.all.includes(:units)
  end
end
