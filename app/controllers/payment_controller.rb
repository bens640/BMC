class PaymentController < ApplicationController
  before_action :set_payment, except: :create
  before_action :set_all_payments, except: :create

  def new

  end

  def index

  end

  def create
    @payment = Payment.new(payment_params)

    @payment.tenant_id = params[:id]


    if @payment.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    else
      flash[:alert] = "Check the message form, something went wrong."
      render root_path
    end

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

    def set_all_payments
       @all_payments = Payment.find(params[:id])
    end

    def payment_params
      params.require(:payment).permit(:tenant_id, :date, :amount, :paid_in_full, :amount_under, :p_type, :rent_month,
                                     :check_number)
    end

end
