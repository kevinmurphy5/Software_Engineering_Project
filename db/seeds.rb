# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users

kevin = User.create!(
    email: 'kevin@email.com',
    password: 'password'
)

john = User.create!(
    email: 'john@email.com',
    password: 'password'
)

alice = User.create!(
    email: 'alice@email.com',
    password: 'password'
)

bob = User.create!(
    email: 'bob@email.com',
    password: 'password'
)

# Auctions

a1 = Auction.create!(
    user: john,
    item_name: "Shoes",
    item_description: "Put em on your feet!",
    start_price: 20.00,
    win_price: 0.00,
    image_path: 'DNE',
    auction_open_status: true,
    auction_ends: DateTime.new(2020, 4, 30, 0, 0, 0),
)  

a2 = Auction.create!(
    user: john,
    item_name: "Shirt",
    item_description: "Put it on your body!",
    start_price: 20.00,
    win_price: 0.00,
    image_path: 'DNE',
    auction_open_status: true,
    auction_ends: DateTime.new(2020, 4, 30, 0, 0, 0),
)

a3 = Auction.create!(
    user: kevin,
    item_name: "Service",
    item_description: "Systems as a",
    start_price: 20.00,
    win_price: 0.00,
    image_path: 'DNE',
    auction_open_status: true,
    auction_ends: DateTime.new(2020, 4, 30, 0, 0, 0),
)

# Bids

a1b1 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 25.00
)

a1b2 = Bid.create!(
    user: bob,
    auction: a3,
    bid_amount: 26.00
)

a1b3 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 27.00
)

a1b4 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 28.00
)

a2b1 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 25.00
)

a2b2 = Bid.create!(
    user: bob,
    auction: a3,
    bid_amount: 26.00
)

a2b3 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 27.00
)

a2b4 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 28.00
)

a3b1 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 25.00
)

a3b2 = Bid.create!(
    user: bob,
    auction: a3,
    bid_amount: 26.00
)

a3b3 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 27.00
)

a3b4 = Bid.create!(
    user: alice,
    auction: a3,
    bid_amount: 28.00
)

