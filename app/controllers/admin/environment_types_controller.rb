class Admin::EnvironmentTypesController < ApplicationController
  before_action :set_admin_environment_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/environment_types
  # GET /admin/environment_types.json
  def index
    @admin_environment_types = Admin::EnvironmentType.all
  end

  # GET /admin/environment_types/1
  # GET /admin/environment_types/1.json
  def show
  end

  # GET /admin/environment_types/new
  def new
    @admin_environment_type = Admin::EnvironmentType.new
  end

  # GET /admin/environment_types/1/edit
  def edit
  end

  # POST /admin/environment_types
  # POST /admin/environment_types.json
  def create
    @admin_environment_type = Admin::EnvironmentType.new(admin_environment_type_params)

    respond_to do |format|
      if @admin_environment_type.save
        format.html { redirect_to @admin_environment_type, notice: 'Environment type was successfully created.' }
        format.json { render :show, status: :created, location: @admin_environment_type }
      else
        format.html { render :new }
        format.json { render json: @admin_environment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/environment_types/1
  # PATCH/PUT /admin/environment_types/1.json
  def update
    respond_to do |format|
      if @admin_environment_type.update(admin_environment_type_params)
        format.html { redirect_to @admin_environment_type, notice: 'Environment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_environment_type }
      else
        format.html { render :edit }
        format.json { render json: @admin_environment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/environment_types/1
  # DELETE /admin/environment_types/1.json
  def destroy
    @admin_environment_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_environment_types_url, notice: 'Environment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_environment_type
      @admin_environment_type = Admin::EnvironmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_environment_type_params
      params.require(:admin_environment_type).permit(:name)
    end
end
