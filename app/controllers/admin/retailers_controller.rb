class Admin::RetailersController < Admin::AdminController
  before_action :set_admin_retailer, only: [:show, :edit, :update, :destroy]

  # GET /admin/retailers
  # GET /admin/retailers.json
  def index
    @admin_retailers = Admin::Retailer.all
  end

  # GET /admin/retailers/1
  # GET /admin/retailers/1.json
  def show
  end

  # GET /admin/retailers/new
  def new
    @admin_retailer = Admin::Retailer.new
  end

  # GET /admin/retailers/1/edit
  def edit
  end

  # POST /admin/retailers
  # POST /admin/retailers.json
  def create
    @admin_retailer = Admin::Retailer.new(admin_retailer_params)

    respond_to do |format|
      if @admin_retailer.save
        format.html { redirect_to @admin_retailer, notice: 'Retailer was successfully created.' }
        format.json { render :show, status: :created, location: @admin_retailer }
      else
        format.html { render :new }
        format.json { render json: @admin_retailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/retailers/1
  # PATCH/PUT /admin/retailers/1.json
  def update
    respond_to do |format|
      if @admin_retailer.update(admin_retailer_params)
        format.html { redirect_to @admin_retailer, notice: 'Retailer was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_retailer }
      else
        format.html { render :edit }
        format.json { render json: @admin_retailer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/retailers/1
  # DELETE /admin/retailers/1.json
  def destroy
    @admin_retailer.destroy
    respond_to do |format|
      format.html { redirect_to admin_retailers_url, notice: 'Retailer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_retailer
      @admin_retailer = Admin::Retailer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_retailer_params
      params.require(:admin_retailer).permit(:name, :sector_id)
    end
end
