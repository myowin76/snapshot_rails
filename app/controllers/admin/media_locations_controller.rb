class Admin::MediaLocationsController < Admin::AdminController
  before_action :set_admin_media_location, only: [:show, :edit, :update, :destroy]

  # GET /admin/media_locations
  # GET /admin/media_locations.json
  def index
    @admin_media_locations = Admin::MediaLocation.all
  end

  # GET /admin/media_locations/1
  # GET /admin/media_locations/1.json
  def show
  end

  # GET /admin/media_locations/new
  def new
    @admin_media_location = Admin::MediaLocation.new
  end

  # GET /admin/media_locations/1/edit
  def edit
  end

  # POST /admin/media_locations
  # POST /admin/media_locations.json
  def create
    @admin_media_location = Admin::MediaLocation.new(admin_media_location_params)

    respond_to do |format|
      if @admin_media_location.save
        format.html { redirect_to @admin_media_location, notice: 'Media location was successfully created.' }
        format.json { render :show, status: :created, location: @admin_media_location }
      else
        format.html { render :new }
        format.json { render json: @admin_media_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/media_locations/1
  # PATCH/PUT /admin/media_locations/1.json
  def update
    respond_to do |format|
      if @admin_media_location.update(admin_media_location_params)
        format.html { redirect_to @admin_media_location, notice: 'Media location was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_media_location }
      else
        format.html { render :edit }
        format.json { render json: @admin_media_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/media_locations/1
  # DELETE /admin/media_locations/1.json
  def destroy
    @admin_media_location.destroy
    respond_to do |format|
      format.html { redirect_to admin_media_locations_url, notice: 'Media location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_media_location
      @admin_media_location = Admin::MediaLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_media_location_params
      params.require(:admin_media_location).permit(:name)
    end
end
