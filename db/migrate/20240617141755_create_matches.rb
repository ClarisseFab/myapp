class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.belongs_to :poule
      t.integer :equipe1_id
      t.integer :equipe2_id
      t.integer :score_equipe1
      t.integer :score_equipe2
      t.integer :vainqueur_id

      t.timestamps
    end
  end
end
