user1 = User.create(
  :name => "Riku",
  :email => "riku@kh.com",
  :password => "rikupass"
)

user2 = User.create(
  :name => "Sora",
  :email => "sora@kh.com",
  :password => "sorapass"
)

user3 = User.create(
  :name => "Kairi",
  :email => "kairi@kh.com",
  :password => "kairipass"
)

game1 = Game.create(
  :name => "Kingdom Hearts",
  :max_player => 1,
  :description => "A game with final fantasy and disney characters."
)

game2 = Game.create(
  :name => "Dragon Ball Fighter Z",
  :max_player => 2,
  :description => "The side-scroll DBZ fighter game."
)

game3 = Game.create(
  :name => "Super Smash Bros",
  :max_player => 8,
  :description => "A game with a bunch of nintendo characters."
)

user1.games << game1
user1.games << game2

user2.games << game2
user2.games << game3

user3.games << game1
user3.games << game3
