class Admin::BrandOwnersController < Admin::AdminController
  before_action :set_admin_brand_owner, only: [:show, :edit, :update, :destroy]

  # GET /admin/brand_owners
  # GET /admin/brand_owners.json
  def index
    @admin_brand_owners = Admin::BrandOwner.all
  end

  # GET /admin/brand_owners/1
  # GET /admin/brand_owners/1.json
  def show
  end

  # GET /admin/brand_owners/new
  def new
    @admin_brand_owner = Admin::BrandOwner.new
  end

  # GET /admin/brand_owners/1/edit
  def edit
  end

  # POST /admin/brand_owners
  # POST /admin/brand_owners.json
  def create
    @admin_brand_owner = Admin::BrandOwner.new(admin_brand_owner_params)

    respond_to do |format|
      if @admin_brand_owner.save
        format.html { redirect_to @admin_brand_owner, notice: 'Brand owner was successfully created.' }
        format.json { render :show, status: :created, location: @admin_brand_owner }
      else
        format.html { render :new }
        format.json { render json: @admin_brand_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/brand_owners/1
  # PATCH/PUT /admin/brand_owners/1.json
  def update
    respond_to do |format|
      if @admin_brand_owner.update(admin_brand_owner_params)
        format.html { redirect_to @admin_brand_owner, notice: 'Brand owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_brand_owner }
      else
        format.html { render :edit }
        format.json { render json: @admin_brand_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/brand_owners/1
  # DELETE /admin/brand_owners/1.json
  def destroy
    @admin_brand_owner.destroy
    respond_to do |format|
      format.html { redirect_to admin_brand_owners_url, notice: 'Brand owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_brand_owner
      @admin_brand_owner = Admin::BrandOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_brand_owner_params
      params.require(:admin_brand_owner).permit(:name)
    end
end
