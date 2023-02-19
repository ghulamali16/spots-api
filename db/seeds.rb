# seeds.rb

# Create some sample spots with images
spot1 = Spot.create(
  title: "Cabin in the woods",
  description: "A cozy cabin in the woods",
  price: 100.0
)
spot1.images.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj78MIv4S_1OG1VrivVAkJEXxQaMxwlTuOYQ&usqp=CAU'), filename: 'cabin1.jpg')
spot1.images.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj78MIv4S_1OG1VrivVAkJEXxQaMxwlTuOYQ&usqp=CAU'), filename: 'cabin2.jpg')

spot2 = Spot.create(
  title: "Beach house",
  description: "A beautiful beach house",
  price: 200.0
)
spot2.images.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj78MIv4S_1OG1VrivVAkJEXxQaMxwlTuOYQ&usqp=CAU'), filename: 'beach1.jpg')
spot2.images.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj78MIv4S_1OG1VrivVAkJEXxQaMxwlTuOYQ&usqp=CAU'), filename: 'beach2.jpg')

spot3 = Spot.create(
  title: "Mountain retreat",
  description: "A rustic mountain cabin",
  price: 150.0
)
spot3.images.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj78MIv4S_1OG1VrivVAkJEXxQaMxwlTuOYQ&usqp=CAU'), filename: 'mountain1.jpg')
spot3.images.attach(io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj78MIv4S_1OG1VrivVAkJEXxQaMxwlTuOYQ&usqp=CAU'), filename: 'mountain2.jpg')

# Create some reviews for the spots
Review.create(
  spot: spot1,
  content: "Had a wonderful time in this cozy cabin. Highly recommended!",
  rating: 5
)

Review.create(
  spot: spot2,
  content: "The beach house was incredible. Waking up to the sound of the waves was a dream come true.",
  rating: 4
)

Review.create(
  spot: spot3,
  content: "The mountain cabin was the perfect retreat. The views were breathtaking.",
  rating: 4
)
