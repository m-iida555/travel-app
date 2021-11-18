class ChangeColumnInReservations < ActiveRecord::Migration[6.0]
  def change
      #change_column :reservations, :start, 'date USING CAST(start AS date)'
      #change_column :reservations, :end, 'date USING CAST(end AS date)'
  end
end
