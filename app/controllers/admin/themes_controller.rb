class Admin::ThemesController < ApplicationController
  before_action :set_admin_theme, only: [:show, :edit, :update, :destroy]

  # GET /admin/themes
  # GET /admin/themes.json
  def index
    @admin_themes = Admin::Theme.all
  end

  # GET /admin/themes/1
  # GET /admin/themes/1.json
  def show
  end

  # GET /admin/themes/new
  def new
    @admin_theme = Admin::Theme.new
  end

  # GET /admin/themes/1/edit
  def edit
  end

  # POST /admin/themes
  # POST /admin/themes.json
  def create
    @admin_theme = Admin::Theme.new(admin_theme_params)

    respond_to do |format|
      if @admin_theme.save
        format.html { redirect_to @admin_theme, notice: 'Theme was successfully created.' }
        format.json { render :show, status: :created, location: @admin_theme }
      else
        format.html { render :new }
        format.json { render json: @admin_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/themes/1
  # PATCH/PUT /admin/themes/1.json
  def update
    respond_to do |format|
      if @admin_theme.update(admin_theme_params)
        format.html { redirect_to @admin_theme, notice: 'Theme was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_theme }
      else
        format.html { render :edit }
        format.json { render json: @admin_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/themes/1
  # DELETE /admin/themes/1.json
  def destroy
    @admin_theme.destroy
    respond_to do |format|
      format.html { redirect_to admin_themes_url, notice: 'Theme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_theme
      @admin_theme = Admin::Theme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_theme_params
      params.require(:admin_theme).permit(:name)
    end
end
