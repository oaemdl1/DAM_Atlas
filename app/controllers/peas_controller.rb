class PeasController < ApplicationController
  before_action :set_pea, only: [:show, :edit, :update, :destroy]

  # GET /peas
  # GET /peas.json
  def index
    @peas = Pea.all
  end

  # GET /peas/1
  # GET /peas/1.json
  def show
  end

  # GET /peas/new
  def new
    @pea = Pea.new
  end

  # GET /peas/1/edit
  def edit
  end

  # POST /peas
  # POST /peas.json
  def create
    @pea = Pea.new(pea_params)

    respond_to do |format|
      if @pea.save
        format.html { redirect_to @pea, notice: 'Pea was successfully created.' }
        format.json { render :show, status: :created, location: @pea }
      else
        format.html { render :new }
        format.json { render json: @pea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peas/1
  # PATCH/PUT /peas/1.json
  def update
    respond_to do |format|
      if @pea.update(pea_params)
        format.html { redirect_to @pea, notice: 'Pea was successfully updated.' }
        format.json { render :show, status: :ok, location: @pea }
      else
        format.html { render :edit }
        format.json { render json: @pea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peas/1
  # DELETE /peas/1.json
  def destroy
    @pea.destroy
    respond_to do |format|
      format.html { redirect_to peas_url, notice: 'Pea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pea
      @pea = Pea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pea_params
      params.require(:pea).permit(:specialty_id, :ciclo, :detalle)
    end
end
