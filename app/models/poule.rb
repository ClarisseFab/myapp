class Poule < ApplicationRecord
    has_many :equipes
    belongs_to :user
end
