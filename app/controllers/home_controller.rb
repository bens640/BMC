class HomeController < ApplicationController


  def index
    @properties = Property.all
  end

  def new_tenant_select
    @properties = Property.all
  end
end
