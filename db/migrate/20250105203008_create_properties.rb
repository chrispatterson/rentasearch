# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[8.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
