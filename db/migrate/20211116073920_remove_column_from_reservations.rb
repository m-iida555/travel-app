class RemoveColumnFromReservations < ActiveRecord::Migration[6.0]
  def change
      remove_column :reservations, :start, :integer
      remove_column :reservations, :end, :integer
  end
end
