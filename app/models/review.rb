class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :message, :presence => true
end