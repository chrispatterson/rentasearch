# frozen_string_literal: true

class CreateUnits < ActiveRecord::Migration[8.0]
  def change
    create_table :units do |t|
      t.belongs_to :property, null: false, foreign_key: true
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.integer :square_footage
      t.integer :rent_price

      t.timestamps
    end
  end
end
