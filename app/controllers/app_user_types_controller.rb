class AppUserTypesController < ApplicationController
  before_action :set_app_user_type, only: [:show, :edit, :update, :destroy]

  # GET /app_user_types
  # GET /app_user_types.json
  def index
    @app_user_types = AppUserType.all
  end

  # GET /app_user_types/1
  # GET /app_user_types/1.json
  def show
  end

  # GET /app_user_types/new
  def new
    @app_user_type = AppUserType.new
  end

  # GET /app_user_types/1/edit
  def edit
  end

  # POST /app_user_types
  # POST /app_user_types.json
  def create
    @app_user_type = AppUserType.new(app_user_type_params)

    respond_to do |format|
      if @app_user_type.save
        format.html { redirect_to @app_user_type, notice: 'App user type was successfully created.' }
        format.json { render :show, status: :created, location: @app_user_type }
      else
        format.html { render :new }
        format.json { render json: @app_user_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_user_types/1
  # PATCH/PUT /app_user_types/1.json
  def update
    respond_to do |format|
      if @app_user_type.update(app_user_type_params)
        format.html { redirect_to @app_user_type, notice: 'App user type was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_user_type }
      else
        format.html { render :edit }
        format.json { render json: @app_user_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_user_types/1
  # DELETE /app_user_types/1.json
  def destroy
    @app_user_type.destroy
    respond_to do |format|
      format.html { redirect_to app_user_types_url, notice: 'App user type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_user_type
      @app_user_type = AppUserType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_user_type_params
      params.require(:app_user_type).permit(:name)
    end
end
