User.create!(email: "a@email.com", name: "Adam", password: "password")
User.create!(email: "b@email.com", name: "Bradley", password: "password")
User.create!(email: "c@email.com", name: "Caroline", password: "password")
User.create!(email: "p@email.com", name: "Petros", password: "password")

Property.create!(address: "4322 S. Evans Avenue, Chicago, IL 60653 ", notes: "beautiful woodwork, cul-de-sac, private assigned parking", rating: 3, user_id: 2, visited: false, available: true, url: " ")
Property.create!(address: "875 N. Michicago Ave., Chicago, IL 60611", notes: "nasty water & persisent plumbing issues", rating: 0, user_id: 2, visited: true, available: true, url: " ")
Property.create!(address: "1647 S. Michigan, Chicago, IL 60616", notes: "close to everything - super pedestrian friendly, I can walk to work , the lake front and Shedd Aquarium", rating: 5, user_id: 2, visited: true, available: true, url: " ")
Property.create!(address: "215 W Ohio Street, Chicago, IL 60654", notes: "Commercial", rating: "", user_id: 3, visited: false, available: false, url: " ")
Property.create!(address: "216 W Ohio, #3, Chicago, IL 60654", notes: "Loft space. Smells like cat", rating: 2, user_id: 3, visited: true, available: true, url: "")
Property.create!(address: "216 W Ohio, #6, Chicago, IL 60654", notes: "restaurant and bar downstairs - easy access to retail - close to the 90/94", rating: 5, user_id: 1, visited: true, available: true, url: " ")

Amenity.create!(description: "close to the lake")
Amenity.create!(description: "public transportation")
Amenity.create!(description: "designated parking")
Amenity.create!(description: "bike room")
Amenity.create!(description: "laundry in-unit")
Amenity.create!(description: "laundry on premises")
Amenity.create!(description: "wheel chair accessible")
Amenity.create!(description: "laundry on premises")
Amenity.create!(description: "3 bedrooms")
Amenity.create!(description: "2 bathrooms")
Amenity.create!(description: "No Pets")
Amenity.create!(description: "Other....")

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

Image.create!(user_id: 1, property_id: 5, url: "https://cdngeneral.rentcafe.com/dmslivecafe/3/725340/Kitchen%20at%20Prescott%20Lakes%20Apartments%20in%20Prescott%20AZ%201.jpg?quality=85&scale=both&")
Image.create!(user_id: 2, property_id: 5, url: "https://cdngeneral.rentcafe.com/dmslivecafe/3/632714/exterior-san-antonio-apartments.jpg?crop=(0,24,300,197)&cropxunits=300&cropyunits=197&quality=85&scale=both&")
Image.create!(user_id: 3, property_id: 5, url: "https://images1.apartments.com/i2/S0eypuJdBr1bceWM_TXHDuzQOQ75ft8-UfE_u86kNrQ/117/urban-palms-houston-tx-building-photo.jpg")
Image.create!(user_id: 1, property_id: 1, url: "")
Image.create!(user_id: 1, property_id: 3, url: "")
Image.create!(user_id: 4, property_id: 1, url: "")
Image.create!(user_id: 4, property_id: 1, url: "")
Image.create!(user_id: 2, property_id: 2, url: "")
Image.create!(user_id: 2, property_id: 2, url: "")
Image.create!(user_id: 3, property_id: 3, url: "")
Image.create!(user_id: 3, property_id: 3, url: "")
Image.create!(user_id: 4, property_id: 3, url: "")
