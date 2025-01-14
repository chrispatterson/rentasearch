# frozen_string_literal: true

require 'application_system_test_case'

class UnitsTest < ApplicationSystemTestCase
  setup do
    @unit = units(:one)
  end

  test 'visiting the index' do
    visit units_url
    assert_selector 'h1', text: 'Units'
  end

  test 'should create unit' do
    visit units_url
    click_on 'New unit'

    fill_in 'Bathroom count', with: @unit.bathroom_count
    fill_in 'Bedroom count', with: @unit.bedroom_count
    fill_in 'Property', with: @unit.property_id
    fill_in 'Rent price', with: @unit.rent_price
    fill_in 'Square footage', with: @unit.square_footage
    click_on 'Create Unit'

    assert_text 'Unit was successfully created'
    click_on 'Back'
  end

  test 'should update Unit' do
    visit unit_url(@unit)
    click_on 'Edit this unit', match: :first

    fill_in 'Bathroom count', with: @unit.bathroom_count
    fill_in 'Bedroom count', with: @unit.bedroom_count
    fill_in 'Property', with: @unit.property_id
    fill_in 'Rent price', with: @unit.rent_price
    fill_in 'Square footage', with: @unit.square_footage
    click_on 'Update Unit'

    assert_text 'Unit was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Unit' do
    visit unit_url(@unit)
    click_on 'Destroy this unit', match: :first

    assert_text 'Unit was successfully destroyed'
  end
end
