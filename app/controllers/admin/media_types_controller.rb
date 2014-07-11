class Admin::MediaTypesController < ApplicationController
  before_action :set_admin_media_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/media_types
  # GET /admin/media_types.json
  def index
    @admin_media_types = Admin::MediaType.all
  end

  # GET /admin/media_types/1
  # GET /admin/media_types/1.json
  def show
  end

  # GET /admin/media_types/new
  def new
    @admin_media_type = Admin::MediaType.new
  end

  # GET /admin/media_types/1/edit
  def edit
  end

  # POST /admin/media_types
  # POST /admin/media_types.json
  def create
    @admin_media_type = Admin::MediaType.new(admin_media_type_params)

    respond_to do |format|
      if @admin_media_type.save
        format.html { redirect_to @admin_media_type, notice: 'Media type was successfully created.' }
        format.json { render :show, status: :created, location: @admin_media_type }
      else
        format.html { render :new }
        format.json { render json: @admin_media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/media_types/1
  # PATCH/PUT /admin/media_types/1.json
  def update
    respond_to do |format|
      if @admin_media_type.update(admin_media_type_params)
        format.html { redirect_to @admin_media_type, notice: 'Media type was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_media_type }
      else
        format.html { render :edit }
        format.json { render json: @admin_media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/media_types/1
  # DELETE /admin/media_types/1.json
  def destroy
    @admin_media_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_media_types_url, notice: 'Media type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_media_type
      @admin_media_type = Admin::MediaType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_media_type_params
      params.require(:admin_media_type).permit(:name)
    end
end
