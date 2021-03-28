User.delete_all
User.reset_pk_sequence
Game.delete_all
Game.reset_pk_sequence
Review.delete_all
Review.reset_pk_sequence

riku = User.create(
  :name => "Riku",
  :email => "riku@kh.com",
  :password => "rikupass"
)

sora = User.create(
  :name => "Sora",
  :email => "sora@kh.com",
  :password => "sorapass"
)

kairi = User.create(
  :name => "Kairi",
  :email => "kairi@kh.com",
  :password => "kairipass"
)

game1 = Game.create(
  :name => "Kingdom Hearts",
)

game2 = Game.create(:name => "Dragon Ball Fighter Z",)


review1 = Review.create(:message => "great game")

review2 = Review.create(:message => "needs more story")

review3 = Review.create(
  :message => "BAD GAME!!!"
)

review4 = Review.create(
  :message => "NEVER AGAIN!!"
)

game1.reviews << [review1,review2]
game2.reviews << [review3,review4]
sora.reviews << [review1, review3]
riku.reviews << review2
kairi.reviews << review4

Game.create(:name => "Dark Souls")
Game.create(:name => "Dark Souls II")
Game.create(:name => "Dark Souls III")
Game.create(:name => "Soul Calibur")
Game.create(:name => "Jak and Daxter 3")
Game.create(:name => "Super Smash Bros")
Game.create(:name => "Sonic")
Game.create(:name => "Mario Party")
Game.create(:name => "Hollow Knight")
Game.create(:name => "Ori!")