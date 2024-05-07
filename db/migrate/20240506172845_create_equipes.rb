class CreateEquipes < ActiveRecord::Migration[7.1]
  def change
    create_table :equipes do |t|
      t.string :nom_equipe
      t.string :nom_capitaine
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
