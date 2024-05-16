class EquipesController < ApplicationController
  before_action :set_equipe, only: %i[ show edit update destroy ]

  # GET /equipes or /equipes.json
  def index
    @equipes = Equipe.all
  end

  # GET /equipes/1 or /equipes/1.json
  def show
  end

  # GET /equipes/new
  def new
    @equipe = Equipe.new
  end

  # GET /equipes/1/edit
  def edit
  end

  # POST /equipes or /equipes.json
  def create
    @equipe = Equipe.new(equipe_params)

    respond_to do |format|
      if @equipe.save
        format.html { redirect_to equipes_url, notice: "L'équipe a bien été créée !" }
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
        format.html { redirect_to equipes_url, notice: "L'équipe a bien été mise à jour" }
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

    respond_to do |format|
      format.html { redirect_to equipes_url, notice: "L'équipe a bien été supprimée" }
      format.json { head :no_content }
    end
  end

  def test 
    @equipe_all = Equipe.all
    @equipe_all.destroy_all
    @equipes_test = ["Polo", "P'tit Sherlock", "Polo le ptit homme de ménage", "Polo le ptit chef", "Polochon", "Polo apprend à bloquer", "Polo a mal au dos", "Poli", "Polo le ptit mique", "Clacla la GRANDE volleyeuse", "Asul 5", "Asul 2", "Les zippeuses", "Asul 16", "Fred", "Asul 1"]
    @i = 0
    @equipes_test.each do |equipe_test|
      @equipe = Equipe.new()
      @equipe.nom_equipe = @equipes_test[@i]
      @equipe.save
      @i=@i+1
    end 
    redirect_to equipes_url
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipe
      @equipe = Equipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipe_params
      params.require(:equipe).permit(:nom_equipe, :nom_capitaine, :telephone, :email, :poule_id)
    end
end
