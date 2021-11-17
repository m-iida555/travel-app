class AddTwocolumnToReservations < ActiveRecord::Migration[6.0]
  def change
      add_column :reservations, :start, :date
      add_column :reservations, :end, :date
  end
end
