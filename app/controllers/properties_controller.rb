# frozen_string_literal: true

class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]

  # GET /properties
  def index
    @pagy, @properties = pagy(Property.all.includes(:units))
  end

  # GET /properties/1
  def show; end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit; end

  # POST /properties
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy!

    respond_to do |format|
      format.html { redirect_to properties_path, status: :see_other, notice: 'Property was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def property_params
    params.expect(property: %i[address city state])
  end
end
