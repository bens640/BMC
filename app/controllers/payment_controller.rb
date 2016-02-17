class PaymentController < ApplicationController
  before_action :set_payment, only:[:show, :edit, :update, :destroy]
  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.where(tenant_id: params[:id])
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.tenant_id = params[:id]

  end
  def edit
  end

  def update

  end

  def destroy
  end
  private
    def set_tenant
      @tenant= Tenant.find(params[:tenant_id])
    end

    def set_payment
      @payment = Payment.find(params[:id])
    end

    def payment_params
      params.require(:tenant).permit(:tenant_id, :date, :amount, :paid_in_full, :amount_under, :p_type, :rent_month,
                                     :check_number)
    end

end
