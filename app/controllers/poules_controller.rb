class PoulesController < ApplicationController
  # GET /poules or /poules.json
  def index
    @poules = Poule.where(user_id: current_user.id)
  end

  def generate
    @equipes_all = Equipe.where(user_id: current_user.id)
    if @equipes_all.length != 16
      flash[:notice] = 'Attention, il faut 16 équipes pour créer des poules !'
      redirect_to equipes_url
    else
      @vieilles_poules = Poule.where(user_id: current_user.id)
      @vieilles_poules.destroy_all
      @equipes_all = @equipes_all.shuffle
      @letters_array = %w[A B C D]
      @i = 0
      while @equipes_all.length > 0
        @equipes_random_four = @equipes_all.slice(0, 4)
        @poule = Poule.new
        @poule.nom_poule = @letters_array[@i]
        @poule.user_id = current_user.id
        @poule.equipes = @equipes_random_four
        @poule.save
        @equipes_all -= @equipes_random_four
        @i += 1
      end
      redirect_to poules_url
      flash[:notice] = 'Les poules ont bien été créées'
    end
  end
end
