User.create(
  :name => "Riku",
  :email => "riku@kh.com",
  :password => "rikupass"
)

User.create(
  :name => "Sora",
  :email => "sora@kh.com",
  :password => "sorapass"
)

User.create(
  :name => "Kairi",
  :email => "kairi@kh.com",
  :password => "kairipass"
)

Game.create(
  :name => "Kingdom Hearts",
  :max_player => 1,
  :description => "A game with final fantasy and disney characters."
)

Game.create(
  :name => "Dragon Ball Fighter Z",
  :max_player => 2,
  :description => "The side-scroll DBZ fighter game."
)

Game.create(
  :name => "Super Smash Bros",
  :max_player => 8,
  :description => "A game with a bunch of nintendo characters."
)
