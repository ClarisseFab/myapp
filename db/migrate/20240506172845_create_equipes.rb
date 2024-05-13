class CreateEquipes < ActiveRecord::Migration[7.1]
  def change
    create_table :poules do |t|
      t.string :nom_poule
      t.timestamps
    end

    create_table :equipes do |t|
      t.string :nom_equipe
      t.string :nom_capitaine
      t.string :telephone
      t.string :email
      t.belongs_to :poule

      t.timestamps
    end
  end
end
