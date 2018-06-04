class CreateAutors < ActiveRecord::Migration[5.1]
  def change
    create_table :autors do |t|
      t.string :autor
      t.string :email

      t.timestamps
    end
  end
end
