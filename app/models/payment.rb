class Payment < ActiveRecord::Base
  has_one :tenant
end
