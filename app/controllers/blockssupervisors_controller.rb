class BlockssupervisorsController < ApplicationController
  before_action :set_blockssupervisor, only: [:show, :edit, :update, :destroy]

  # GET /blockssupervisors
  # GET /blockssupervisors.json
  def index
    @blockssupervisors = Blockssupervisor.all
  end

  # GET /blockssupervisors/1
  # GET /blockssupervisors/1.json
  def show
  end

  # GET /blockssupervisors/new
  def new
    @blockssupervisor = Blockssupervisor.new
  end

  # GET /blockssupervisors/1/edit
  def edit
  end

  # POST /blockssupervisors
  # POST /blockssupervisors.json
  def create
    @blockssupervisor = Blockssupervisor.new(blockssupervisor_params)

    respond_to do |format|
      if @blockssupervisor.save
        format.html { redirect_to @blockssupervisor, notice: 'Blockssupervisor was successfully created.' }
        format.json { render :show, status: :created, location: @blockssupervisor }
      else
        format.html { render :new }
        format.json { render json: @blockssupervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blockssupervisors/1
  # PATCH/PUT /blockssupervisors/1.json
  def update
    respond_to do |format|
      if @blockssupervisor.update(blockssupervisor_params)
        format.html { redirect_to @blockssupervisor, notice: 'Blockssupervisor was successfully updated.' }
        format.json { render :show, status: :ok, location: @blockssupervisor }
      else
        format.html { render :edit }
        format.json { render json: @blockssupervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blockssupervisors/1
  # DELETE /blockssupervisors/1.json
  def destroy
    @blockssupervisor.destroy
    respond_to do |format|
      format.html { redirect_to blockssupervisors_url, notice: 'Blockssupervisor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blockssupervisor
      @blockssupervisor = Blockssupervisor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blockssupervisor_params
      params.require(:blockssupervisor).permit(:supervisor_id, :block_id, :idtecsem)
    end
end
