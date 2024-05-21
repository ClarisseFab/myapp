class PoulesController < ApplicationController
  before_action :set_poule, only: %i[ show edit update destroy ]

  # GET /poules or /poules.json
  def index
    @poules = Poule.where(user_id: current_user.id)
  end

  # GET /poules/1 or /poules/1.json
  def show
  end

  # GET /poules/new
  def new
    @poule = Poule.new
  end

  # GET /poules/1/edit
  def edit
  end

  # POST /poules or /poules.json
  def create
    @poule = Poule.new(poule_params)

    respond_to do |format|
      if @poule.save
        format.html { redirect_to poule_url(@poule), notice: "Poule was successfully created." }
        format.json { render :show, status: :created, location: @poule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poules/1 or /poules/1.json
  def update
    respond_to do |format|
      if @poule.update(poule_params)
        format.html { redirect_to poule_url(@poule), notice: "Poule was successfully updated." }
        format.json { render :show, status: :ok, location: @poule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poules/1 or /poules/1.json
  def destroy
    @poule.destroy!

    respond_to do |format|
      format.html { redirect_to poules_url, notice: "Poule was successfully destroyed." }
      format.json { head :no_content }
    end
  end


def generate
  @equipes_all = Equipe.where(user_id: current_user.id)
  if (@equipes_all.length != 16)
    flash[:notice] = "Attention, il faut 16 équipes pour créer des poules !"
    redirect_to equipes_url
  else
    @vieilles_poules = Poule.where(user_id: current_user.id)
    @vieilles_poules.destroy_all
    @equipes_all = @equipes_all.shuffle()
    @letters_array = ["A", "B", "C", "D"]
    @i = 0
    while @equipes_all.length > 0
      @equipes_random_four= @equipes_all.slice(0, 4)
      @poule = Poule.new()
      @poule.nom_poule = @letters_array[@i]
      @poule.user_id = current_user.id
      @poule.equipes = @equipes_random_four
      @poule.save
      @equipes_all =  @equipes_all - @equipes_random_four
      @i = @i+1
    end 
    redirect_to poules_url
    flash[:notice] = "Les poules ont bien été créées"
  end 
end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poule
      @poule = Poule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poule_params
      params.require(:poule).permit(:user_id)
    end
end


