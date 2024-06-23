class Match < ApplicationRecord
  belongs_to :poule
  belongs_to :equipe1, class_name: :Equipe, foreign_key: :equipe1_id
  belongs_to :equipe2, class_name: :Equipe, foreign_key: :equipe2_id
  belongs_to :vainqueur, class_name: :Equipe, foreign_key: :vainqueur_id
  belongs_to :user
end
