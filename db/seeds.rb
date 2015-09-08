# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Property.create(name: 'millenium shops', address: '123 Center Way', city: 'Sunny Isles Beach', state: 'FL',
                zip: '33160', sqft: 10000)
Tenant.create(property_id: 1, unit_number: '12', sqft: 1000, name: "aroma", owner: "ben", phone: "1234567890", email:
    "ben@123.com", b_type: "restuarant", start: '2013-03-14', end: '1018-12-23', lease_length: "36 months", rent: 9000,
              cam: 1000,
             increase_type: "yearly", increase_amount: '3%', renewal_options: "2 year", security_deposit: 9000,
              first_last: 1800)
