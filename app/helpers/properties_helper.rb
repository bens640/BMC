module PropertiesHelper

  def total_monthly_rent(rent, cam)
    number_to_currency(rent + cam)
  end

  def total_annual_rent(rent,cam)
    number_to_currency((rent+cam)*12)
  end

  def total_annual_rent_per(rent, cam, sqft)
    number_to_currency(((rent + cam) * 12) / sqft)
  end

end
