class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :iconpic
      t.string :introduction
      t.string :name
      t.string :email
      t.string :password
      t.text :img

      t.timestamps
    end
  end
end
