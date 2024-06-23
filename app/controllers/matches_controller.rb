class MatchesController < ApplicationController
  # GET /matches or /matches.json
  def index
    @matches = Match.where(user_id: current_user.id)
    @poules = Poule.where(user_id: current_user.id)
  end

  def generate
    @vieux_matchs = Match.where(user_id: current_user.id)
    @vieux_matchs.destroy_all
    @poules = Poule.where(user_id: current_user.id)
    @poules.each do |poule|
      @equipes = poule.equipes
      generate_matches(@equipes)
    end
    redirect_to matches_url
  end

  private

  def generate_matches(equipes)
    while equipes.length >= 2
      for i in 1..(equipes.length - 1) do
        @match = Match.new
        @match.equipe1_id = equipes[0].id
        @match.equipe2_id = equipes[i].id
        @match.user_id = current_user.id
        @match.poule_id = equipes[0].poule_id
        @match.vainqueur_id = equipes[0].id
        @match.save
      end
      equipes = equipes.drop(1)
    end
  end
end
