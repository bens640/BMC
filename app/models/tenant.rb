class Tenant < ActiveRecord::Base
  belongs_to :property
  has_many :payments



  INCREASE_PERIOD= [1, 3, 5 ]
  INCREASE_AMOUNT= [1,2,3,4,5]
  RENEWAL_AMOUNT= [1,2,3,4,5,6,7,8]
  RENEWAL_OPTIONS= [1,2,3,4,5,6,7,8]


end
