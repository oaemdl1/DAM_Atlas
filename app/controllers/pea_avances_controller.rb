class PeaAvancesController < ApplicationController
  before_action :set_pea_avance, only: [:show, :edit, :update, :destroy]

  # GET /pea_avances
  # GET /pea_avances.json
  def index
    @pea_avances = PeaAvance.all
  end

  # GET /pea_avances/1
  # GET /pea_avances/1.json
  def show
  end

  # GET /pea_avances/new
  def new
    @pea_avance = PeaAvance.new
  end

  # GET /pea_avances/1/edit
  def edit
  end

  # POST /pea_avances
  # POST /pea_avances.json
  def create
    @pea_avance = PeaAvance.new(pea_avance_params)

    respond_to do |format|
      if @pea_avance.save
        format.html { redirect_to @pea_avance, notice: 'Pea avance was successfully created.' }
        format.json { render :show, status: :created, location: @pea_avance }
      else
        format.html { render :new }
        format.json { render json: @pea_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pea_avances/1
  # PATCH/PUT /pea_avances/1.json
  def update
    respond_to do |format|
      if @pea_avance.update(pea_avance_params)
        format.html { redirect_to @pea_avance, notice: 'Pea avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @pea_avance }
      else
        format.html { render :edit }
        format.json { render json: @pea_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pea_avances/1
  # DELETE /pea_avances/1.json
  def destroy
    @pea_avance.destroy
    respond_to do |format|
      format.html { redirect_to pea_avances_url, notice: 'Pea avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pea_avance
      @pea_avance = PeaAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pea_avance_params
      params.require(:pea_avance).permit(:pea_id, :dominio, :oper_ejecutar, :oper_seminario)
    end
end
