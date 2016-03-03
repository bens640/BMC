module TenantsHelper

  def annual_rent(rent)
    number_to_currency(rent*12)
  end

  def monthly_tax(rent, cam)
    number_to_currency((rent + cam) * 0.07)
  end


end
