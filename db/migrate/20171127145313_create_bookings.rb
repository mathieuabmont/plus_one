class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.text :description
      t.string :location
      t.integer :duration
      t.references :user, foreign_key: true
      t.references :prestation, foreign_key: true

      t.timestamps
    end
  end
end
