class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  # GET /visits
  # GET /visits.json
  def index
    @visits = Visit.all
  end

  # GET /visits/1
  # GET /visits/1.json
  def show
  end

  # GET /visits/new
  def new
    @visit = Visit.new
  end

  # GET /visits/1/edit
  def edit
  end

  # POST /visits
  # POST /visits.json
  def create
    @visit = Visit.new(visit_params)

    respond_to do |format|
      if @visit.save
        format.html { redirect_to @visit, notice: 'Visit was successfully created.' }
        format.json { render :show, status: :created, location: @visit }
      else
        format.html { render :new }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1
  # PATCH/PUT /visits/1.json
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to @visit, notice: 'Visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit }
      else
        format.html { render :edit }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visits/1
  # DELETE /visits/1.json
  def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to visits_url, notice: 'Visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_by_supervisor 
    #https://dam-atlas-luisreque.c9.io/visitas/get_by_supervisor?pIntIdSupervisor=5
    #supervisor_visits = Visit.where(["supervisor_id = ?", params[:pIntIdSupervisor]]);
    #supervisor_visits = Visit.where(["supervisor_id = ?", params[:pIntIdSupervisor]]).joins(:company).select("visits.id id_visit,company_name,visit_date,companies.id as id_company");
    supervisor_visits = Visit.where(["supervisor_id = ?", params[:pIntIdSupervisor]]).joins(:company).select("visits.id id_visit,company_name,visit_date,companies.id as id_company, url, students.name as student_name, students.last_name as student_last_name").joins('INNER JOIN students ON visits.student_id = students.id');

    render json: supervisor_visits;
#        format.json { render json: supervisor_visits, status: :ok }
  end
  
  def get_by_supervisor_date
    #https://dam-atlas-luisreque.c9.io/visitas/get_by_supervisor_date?pIntIdSupervisor=5&pStrFecha=2015-08-17
    supervisor_visits = Visit.where(["supervisor_id = ? AND date_format(visit_date,'%Y-%m-%d')=?", params[:pIntIdSupervisor],params[:pStrFecha]]).joins(:company).select("visits.id id_visit,company_name,visit_date,estimated_time,companies.id as id_company, students.name as student_name, students.last_name as student_last_name").joins('INNER JOIN students ON visits.student_id = students.id');

    render json: supervisor_visits;
#        format.json { render json: supervisor_visits, status: :ok }
  end
  
  def get_by_id
    #https://upc-ok-moviles-luisreque.c9.io/visitas/get_by_supervisor?pIntIdSupervisor=5
    #supervisor_visits = Visit.where(["supervisor_id = ?", params[:pIntIdSupervisor]]);
    #supervisor_visits = Visit.where(["supervisor_id = ?", params[:pIntIdSupervisor]]).joins(:company).select("visits.id id_visit,company_name,visit_date,companies.id as id_company");
    item_visit = Visit.where(["visits.id = ?", params[:pIntIdVisit]]).joins(:company).select("visits.id id_visit,company_name,visit_date,companies.id as id_company, students.name as student_name, students.last_name as student_last_name, latitude, longitude, address").joins('INNER JOIN students ON companies.id = students.company_id');

    render json: item_visit;
#        format.json { render json: supervisor_visits, status: :ok }
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_params
      params.require(:visit).permit(:visit_date, :estimated_time, :motive, :comments, :company_id, :supervisor_id, :student_id, :visit_status_id)
    end
end
