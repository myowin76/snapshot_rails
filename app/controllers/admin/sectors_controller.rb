class Admin::SectorsController < ApplicationController
  before_action :set_admin_sector, only: [:show, :edit, :update, :destroy]

  # GET /admin/sectors
  # GET /admin/sectors.json
  def index
    @admin_sectors = Admin::Sector.all
  end

  # GET /admin/sectors/1
  # GET /admin/sectors/1.json
  def show
  end

  # GET /admin/sectors/new
  def new
    @admin_sector = Admin::Sector.new
  end

  # GET /admin/sectors/1/edit
  def edit
  end

  # POST /admin/sectors
  # POST /admin/sectors.json
  def create
    @admin_sector = Admin::Sector.new(admin_sector_params)

    respond_to do |format|
      if @admin_sector.save
        format.html { redirect_to @admin_sector, notice: 'Sector was successfully created.' }
        format.json { render :show, status: :created, location: @admin_sector }
      else
        format.html { render :new }
        format.json { render json: @admin_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/sectors/1
  # PATCH/PUT /admin/sectors/1.json
  def update
    respond_to do |format|
      if @admin_sector.update(admin_sector_params)
        format.html { redirect_to @admin_sector, notice: 'Sector was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_sector }
      else
        format.html { render :edit }
        format.json { render json: @admin_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sectors/1
  # DELETE /admin/sectors/1.json
  def destroy
    @admin_sector.destroy
    respond_to do |format|
      format.html { redirect_to admin_sectors_url, notice: 'Sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_sector
      @admin_sector = Admin::Sector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_sector_params
      params.require(:admin_sector).permit(:name)
    end
end
