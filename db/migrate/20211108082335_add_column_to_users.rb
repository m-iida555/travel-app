class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :name, :string
      add_column :users, :introduction, :string
      add_column :users, :iconpic, :text
      add_column :users, :img, :text
  end
end
