# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.create!(address: "4322 S. Evans Avenue, Chicago, IL 60653 ", notes: "beautiful woodwork, cul-de-sac, private assigned parking", rating: 3, user_id: 2, visited: false, available: true, URL: " ")
Property.create!(address: "875 N. Michicago Ave., Chicago, IL 60611", notes: "nasty water & persisent plumbing issues", rating: 0, user_id: 2, visited: true, available: true, URL: " ")
Property.create!(address: "1647 S. Michigan, Chicago, IL 60616", notes: "close to everything - super pedestrian friendly, I can walk to work , the lake front and Shedd Aquarium", rating: 5, user_id: 2, visited: true, available: true, URL: " ")
Property.create!(address: "215 W Ohio Street, Chicago, IL 60654", notes: "Commercial", rating: "", user_id: 3, visited: false, available: false, URL: " ")
Property.create!(address: "216 W Ohio, #3, Chicago, IL 60654", notes: "Loft space. Smells like cat", rating: 2, user_id: 3, visited: true, available: true, URL: "")
Property.create!(address: "216 W Ohio, #6, Chicago, IL 60654", notes: "restaurant and bar downstairs - easy access to retail - close to the 90/94", rating: 5, user_id: 1, visited: true, available: true, URL: " ")

Amenity.create!(description: "public transportation")
Amenity.create!(description: "parking")
Amenity.create!(description: "bike room")
Amenity.create!(description: "laundry in-unit")
Amenity.create!(description: "laundry on premises")
Amenity.create!(description: "wheel chair accessible")
Amenity.create!(description: "laundry on premises")
Amenity.create!(description: "2 bedrooms")
Amenity.create!(description: "2 bathrooms")
Amenity.create!(description: "No Pets")

AmenityProperty.create!(amenity_id: 1, property_id: 4)
AmenityProperty.create!(amenity_id: 3, property_id: 4)
AmenityProperty.create!(amenity_id: 4, property_id: 4)
AmenityProperty.create!(amenity_id: 6, property_id: 4)
AmenityProperty.create!(amenity_id: 9, property_id: 4)

AmenityUser.create!(amenity_id: 1, user_id: 2, must_have: true)
AmenityUser.create!(amenity_id: 2, user_id: 2, must_have: false)
AmenityUser.create!(amenity_id: 4, user_id: 2, must_have: true)
AmenityUser.create!(amenity_id: 1, user_id: 3, must_have: true)
AmenityUser.create!(amenity_id: 7, user_id: 3, must_have: false)
AmenityUser.create!(amenity_id: 5, user_id: 3, must_have: false)

Images.create!(user_id: 1, property_id: 5, url: " ")
Images.create!(user_id: 2, property_id: 5, url: " ")
Images.create!(user_id: 3, property_id: 5, url: " ")
Images.create!(user_id: 1, property_id: 1, url: " ")
Images.create!(user_id: 1, property_id: 3, url: " ")
Images.create!(user_id: 4, property_id: 1, url: " ")
Images.create!(user_id: 4, property_id: 1, url: " ")
Images.create!(user_id: 2, property_id: 2, url: " ")
Images.create!(user_id: 2, property_id: 2, url: " ")
Images.create!(user_id: 3, property_id: 3, url: " ")
Images.create!(user_id: 3, property_id: 3, url: " ")
Images.create!(user_id: 4, property_id: 3, url: " ")
