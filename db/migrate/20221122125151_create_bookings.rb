class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.date :end_date
      t.date :starting_date
      t.boolean :confirmed, default: false
      t.boolean :pending, default: false

      t.timestamps
    end
  end
end
