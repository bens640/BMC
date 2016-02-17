# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Property.create(name: 'millenium shops', address: '123 Center Way', city: 'Sunny Isles Beach', state: 'FL',
                zip: '33160', sqft: 10000)
Tenant.create(property_id: 1, unit_number: '9', sqft: 1578, name: "Dental Office", owner: "Diane Alveraz",
              phone: "305-923-3465", email: "drdentist@dentist.com", b_type: "dentist", start: '2012-10-15',
              end: '1017-10-14',
              lease_length: "60 months", rent: 3287.50, cam: 10, increase_type: "yearly", increase_amount: '3%',
              security_deposit: 3287.50,
              first: 4924.68, last: 5542.76, late_payment: 5, payment_method: 1, commencement: '2012-10-15')
User.create(name: 'Ben Shelomovitz', email: '1@2.com', admin: true, owner: true, password_digest: BCrypt::Password.create('123'))