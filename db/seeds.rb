# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create A Category table of adds
AdsCategory.find_or_create_by(ads_type: "black and white ad", ads_cost: "2")
AdsCategory.find_or_create_by(ads_type: "color ad", ads_cost: "8")
AdsCategory.find_or_create_by(ads_type: "flashy ad", ads_cost: "64")

# Create A Add size
AdsSize.find_or_create_by(ads_size: "1*1")
AdsSize.find_or_create_by(ads_size: "2*2")
AdsSize.find_or_create_by(ads_size: "4*4")

puts "*************** Completed *************"