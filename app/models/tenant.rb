class Tenant < ActiveRecord::Base
  belongs_to :property



  INCREASE_PERIOD= [1, 3, 5 ]
  INCREASE_AMOUNT= [1,2,3,4,5]


end
