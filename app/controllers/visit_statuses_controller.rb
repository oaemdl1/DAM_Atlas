class VisitStatusesController < ApplicationController
  before_action :set_visit_status, only: [:show, :edit, :update, :destroy]

  # GET /visit_statuses
  # GET /visit_statuses.json
  def index
    @visit_statuses = VisitStatus.all
  end

  # GET /visit_statuses/1
  # GET /visit_statuses/1.json
  def show
  end

  # GET /visit_statuses/new
  def new
    @visit_status = VisitStatus.new
  end

  # GET /visit_statuses/1/edit
  def edit
  end

  # POST /visit_statuses
  # POST /visit_statuses.json
  def create
    @visit_status = VisitStatus.new(visit_status_params)

    respond_to do |format|
      if @visit_status.save
        format.html { redirect_to @visit_status, notice: 'Visit status was successfully created.' }
        format.json { render :show, status: :created, location: @visit_status }
      else
        format.html { render :new }
        format.json { render json: @visit_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_statuses/1
  # PATCH/PUT /visit_statuses/1.json
  def update
    respond_to do |format|
      if @visit_status.update(visit_status_params)
        format.html { redirect_to @visit_status, notice: 'Visit status was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_status }
      else
        format.html { render :edit }
        format.json { render json: @visit_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_statuses/1
  # DELETE /visit_statuses/1.json
  def destroy
    @visit_status.destroy
    respond_to do |format|
      format.html { redirect_to visit_statuses_url, notice: 'Visit status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_status
      @visit_status = VisitStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_status_params
      params.require(:visit_status).permit(:name)
    end
end
