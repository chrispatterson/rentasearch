# frozen_string_literal: true

class SearchController < ApplicationController
  # GET /properties
  def index
    @pagy, @properties = pagy(find_properties)
  end

  private

  def find_properties
    property_search_params = permitted_search_params

    SearchProperties.call(property_search_params)
  end

  def permitted_search_params
    params.permit(:query)
  end
end
