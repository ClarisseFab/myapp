class Equipe < ApplicationRecord
  belongs_to :poule, optional: true
  belongs_to :user
  has_many :matches
end
