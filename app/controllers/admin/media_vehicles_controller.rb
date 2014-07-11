class Admin::MediaVehiclesController < ApplicationController
  before_action :set_admin_media_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /admin/media_vehicles
  # GET /admin/media_vehicles.json
  def index
    @admin_media_vehicles = Admin::MediaVehicle.all
  end

  # GET /admin/media_vehicles/1
  # GET /admin/media_vehicles/1.json
  def show
  end

  # GET /admin/media_vehicles/new
  def new
    @admin_media_vehicle = Admin::MediaVehicle.new
  end

  # GET /admin/media_vehicles/1/edit
  def edit
  end

  # POST /admin/media_vehicles
  # POST /admin/media_vehicles.json
  def create
    @admin_media_vehicle = Admin::MediaVehicle.new(admin_media_vehicle_params)

    respond_to do |format|
      if @admin_media_vehicle.save
        format.html { redirect_to @admin_media_vehicle, notice: 'Media vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @admin_media_vehicle }
      else
        format.html { render :new }
        format.json { render json: @admin_media_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/media_vehicles/1
  # PATCH/PUT /admin/media_vehicles/1.json
  def update
    respond_to do |format|
      if @admin_media_vehicle.update(admin_media_vehicle_params)
        format.html { redirect_to @admin_media_vehicle, notice: 'Media vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_media_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @admin_media_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/media_vehicles/1
  # DELETE /admin/media_vehicles/1.json
  def destroy
    @admin_media_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to admin_media_vehicles_url, notice: 'Media vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_media_vehicle
      @admin_media_vehicle = Admin::MediaVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_media_vehicle_params
      params.require(:admin_media_vehicle).permit(:name)
    end
end
