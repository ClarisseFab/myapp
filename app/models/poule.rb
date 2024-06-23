class Poule < ApplicationRecord
  has_many :equipes
  belongs_to :user
  has_many :matches
end
