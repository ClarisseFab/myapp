class EquipesController < ApplicationController
  before_action :set_equipe, only: %i[edit update destroy]

  # GET /equipes or /equipes.json
  def index
    @equipes = Equipe.where(user_id: current_user.id)
  end

  # GET /equipes/new
  def new
    @equipe = Equipe.new
  end

  # GET /equipes/1/edit
  def edit; end

  # POST /equipes or /equipes.json
  def create
    @equipe = Equipe.new(equipe_params)

    respond_to do |format|
      if @equipe.save
        format.html { redirect_to equipes_url, notice: t('activerecord.successful.messages.created.team') }
        format.json { head :no_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipes/1 or /equipes/1.json
  def update
    respond_to do |format|
      if @equipe.update(equipe_params)
        format.html { redirect_to equipes_url, notice: t('activerecord.successful.messages.updated.team') }
        format.json { head :no_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipes/1 or /equipes/1.json
  def destroy
    @equipe.destroy!
    @poule_all = Poule.where(user_id: current_user.id)
    @poule_all.destroy_all
    respond_to do |format|
      format.html { redirect_to equipes_url, notice: t('activerecord.successful.messages.deleted.team') }
      format.json { head :no_content }
    end
  end

  def test
    @equipe_all = Equipe.where(user_id: current_user.id)
    @equipe_all.destroy_all
    @equipes_test = ['Polo', "P'tit Sherlock", 'Polo le ptit homme de ménage', 'Polo le ptit chef', 'Polochon',
                     'Polo apprend à bloquer', 'Polo a mal au dos', 'Poli', 'Polo le ptit mique', 'Clacla la GRANDE volleyeuse', 'Asul 5', 'Asul 2', 'Les zippeuses', 'Asul 16', 'Fred', 'Asul 1']
    @i = 0
    @equipes_test.each do |_equipe_test|
      @equipe = Equipe.new
      @equipe.nom_equipe = @equipes_test[@i]
      @equipe.user_id = current_user.id
      @equipe.save
      @i += 1
    end
    redirect_to equipes_url
  end

  def reset
    @equipe_all = Equipe.where(user_id: current_user.id)
    @equipe_all.destroy_all
    @poule_all = Poule.where(user_id: current_user.id)
    @poule_all.destroy_all
    redirect_to equipes_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_equipe
    @equipe = Equipe.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def equipe_params
    params.require(:equipe).permit(:nom_equipe, :nom_capitaine, :telephone, :email, :poule_id, :user_id)
  end
end
