namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Ring.create!(name: "Bones Ring",
                description: "First Prototype.",
                image: "/assets/silver_spoon.jpg",
                category: "spoon")
    Ring.create!(name: "Prairie Ring",
                description: "Inspired from WoW.",
                image: "https://s3.amazonaws.com/dots88-assets/SilverUtensils.jpg",
                category: "spoon")
    Ring.create!(name: "Ghost Ring",
                description: "100% Sterling Silver.",
                image: "https://s3.amazonaws.com/dots88-assets/SilverShakerSquare.jpg",
                category: "spoon")
    Ring.create!(name: "Elements Ring",
                description: "Forged from flames.",
                image: "https://s3.amazonaws.com/dots88-assets/SilverShakerCircular.jpg",
                category: "spoon")
    Ring.create!(name: "Black Hole Ring",
                description: "Never come back.",
                image: "https://s3.amazonaws.com/dots88-assets/SilverTruck.jpg",
                category: "spoon")
    Ring.create!(name: "Audrey Ring",
                description: "For true love.",
                image: "https://s3.amazonaws.com/dots88-assets/SilverBallLamp.jpg",
                category: "spoon")
    Ring.create!(name: "Alpha Ring",
                description: "Leader of the pack.",
                image: "https://s3.amazonaws.com/dots88-assets/SilverWatch.jpg",
                category: "spoon")
    1.times do |n|
      name  = "Adamantium Ring"
      description = "Another prototype."
      image = "https://s3.amazonaws.com/dots88-assets/SilverCar.jpg"
      category = "spoon"
      Ring.create!(name: name,
                   description: description,
                   image: image,
                   category: category)
    end
  end
end