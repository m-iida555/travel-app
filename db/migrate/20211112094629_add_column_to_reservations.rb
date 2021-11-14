class AddColumnToReservations < ActiveRecord::Migration[6.0]
  def change
      add_column :reservations, :total_money, :integer
      add_column :reservations, :money, :integer
      add_column :reservations, :term, :integer
      add_column :reservations, :roomname, :string
  end
end
