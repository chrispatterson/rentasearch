# frozen_string_literal: true

class UnitsController < ApplicationController
  before_action :set_property
  before_action :set_unit, only: %i[show edit update destroy]

  # GET /units
  def index
    @units = Unit.all
  end

  # GET /units/1
  def show; end

  # GET /units/new
  def new
    @unit = Unit.new
  end

  # GET /units/1/edit
  def edit; end

  # POST /units
  def create
    @unit = Unit.new(unit_params)

    respond_to do |format|
      if @unit.save
        format.html { redirect_to [@property, @unit], notice: 'Unit was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /units/1 or /units/1.json
  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to [@property, @unit], notice: 'Unit was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /units/1 or /units/1.json
  def destroy
    @unit.destroy!

    respond_to do |format|
      format.html do
        redirect_to property_units_path(@property), status: :see_other, notice: 'Unit was successfully destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find(params.expect(:property_id))
  end

  def set_unit
    @unit = Unit.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def unit_params
    params.expect(unit: %i[bedroom_count bathroom_count square_footage
                           rent_price]).merge(property_id: @property.id)
  end
end
