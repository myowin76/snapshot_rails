class Admin::StoreFormatsController < ApplicationController
  before_action :set_admin_store_format, only: [:show, :edit, :update, :destroy]

  # GET /admin/store_formats
  # GET /admin/store_formats.json
  def index
    @admin_store_formats = Admin::StoreFormat.all
  end

  # GET /admin/store_formats/1
  # GET /admin/store_formats/1.json
  def show
  end

  # GET /admin/store_formats/new
  def new
    @admin_store_format = Admin::StoreFormat.new
  end

  # GET /admin/store_formats/1/edit
  def edit
  end

  # POST /admin/store_formats
  # POST /admin/store_formats.json
  def create
    @admin_store_format = Admin::StoreFormat.new(admin_store_format_params)

    respond_to do |format|
      if @admin_store_format.save
        format.html { redirect_to @admin_store_format, notice: 'Store format was successfully created.' }
        format.json { render :show, status: :created, location: @admin_store_format }
      else
        format.html { render :new }
        format.json { render json: @admin_store_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/store_formats/1
  # PATCH/PUT /admin/store_formats/1.json
  def update
    respond_to do |format|
      if @admin_store_format.update(admin_store_format_params)
        format.html { redirect_to @admin_store_format, notice: 'Store format was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_store_format }
      else
        format.html { render :edit }
        format.json { render json: @admin_store_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/store_formats/1
  # DELETE /admin/store_formats/1.json
  def destroy
    @admin_store_format.destroy
    respond_to do |format|
      format.html { redirect_to admin_store_formats_url, notice: 'Store format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_store_format
      @admin_store_format = Admin::StoreFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_store_format_params
      params.require(:admin_store_format).permit(:name)
    end
end
