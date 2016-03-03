module ApplicationHelper

  def is_owner?
    @current_user.owner
  end

  def is_admin?
    @current_user.admin
  end

  def format_date(date)
    date.strftime('%D')
  end

  def sales_tax
    @total * 0.07
  end




end
