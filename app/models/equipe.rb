class Equipe < ApplicationRecord
    belongs_to :poule, optional:true
    belongs_to :user
end
