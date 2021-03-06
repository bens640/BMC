class TenantsController < ApplicationController
  before_action :set_tenant, only: [:show, :edit, :update, :destroy]
  before_action :set_property, only: [:create]


  def index
    @tenants = Tenant.all
  end


  def show
    @total_cam = (@tenant.cam * @tenant.sqft)/12
    @sales_tax = (@tenant.rent + @total_cam) * 0.07

    @all_payments = Payment.where(tenant_id: params[:id])
    @payment = Payment.new
  end


  def new
    @tenant = Tenant.new
    @properties = Property.all
  end


  def edit
  end


  def create
    @tenant = Tenant.new(tenant_params)

    respond_to do |format|
      if @tenant.save
        format.html { redirect_to @tenant, notice: 'Tenant was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end



  def update
    respond_to do |format|
      if @tenant.update(tenant_params)
        format.html { redirect_to @tenant, notice: 'Tenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenant }
      else
        format.html { render :edit }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenants/1
  # DELETE /tenants/1.json
  def destroy
    @tenant.destroy
    respond_to do |format|
      format.html { redirect_to tenants_url, notice: 'Tenant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_property
      @property = Property.find(params[:property_id])
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_tenant
      @tenant = Tenant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenant_params
      params.require(:tenant).permit(:name, :owner, :phone, :email, :b_type, :property_id, :unit_number, :sqft,
                                     :lease_length, :start, :end, :rent, :cam, :increase_type, :increase_amount,
                                     :renewal_options, :security_deposit, :first_last   )
    end
end
